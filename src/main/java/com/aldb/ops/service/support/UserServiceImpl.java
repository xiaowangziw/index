/**
 * 
 */
package com.aldb.ops.service.support;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.aldb.ops.dao.UserDao;
import com.aldb.ops.dao.bean.User;
import com.aldb.ops.entity.DictDto;
import com.aldb.ops.entity.MenuDto;
import com.aldb.ops.entity.RoleDto;
import com.aldb.ops.entity.UserDto;
import com.aldb.ops.service.DictService;
import com.aldb.ops.service.MenuService;
import com.aldb.ops.service.RoleService;
import com.aldb.ops.service.UserService;
import com.alibaba.fastjson.JSON;

/**
 * @author Administrator
 * 
 */
@Service
public class UserServiceImpl implements UserService {

	private static final Logger logger = LoggerFactory
			.getLogger(UserServiceImpl.class);

	@Autowired
	private UserDao userDao;

	@Override
	public UserDto loadUserAllInfoByLoginName(String loginName) {
		String userId = queryUserByLoginName(loginName);
		return loadUserAllInfoById(userId);
	}

	/**
	 * 根据用户的登陆名，查询用户的id, 用户的登陆名可能是 login_name, `email` varchar(200) DEFAULT NULL
	 * COMMENT '邮箱', `phone` varchar(200) DEFAULT NULL COMMENT '电话', `mobile`
	 * varchar(200) DEFAULT NULL COMMENT '手机',
	 * 
	 * 目前为了简单，只能用login_name进行登陆
	 */
	@Override
	public String queryUserByLoginName(String loginName) {

		return userDao.queryUserIdByLoginName(loginName);
	}

	@Autowired
	private RoleService roleService;

	@Autowired
	private MenuService menuService;

	private static final String topMenuParentId = "1";
	private static final String sysMenuParentId = "0";

	private static final String groupMenuMark = "GROUP_MENU";
	private static final String commonMenuMark = "COMMON_MENU";
	private static final String resourceMark = "RESOURCE";

	/**
	 * 根据用户id,加载用户信息，加载用户角色，加载角色权限，对权限进行分类，加载子系统信息
	 */
	@Override
	public UserDto loadUserAllInfoById(String id) {
		logger.info("根据用户id,查询用户信息,id={}", id);
		User user = userDao.queryUserById(id);
		UserDto userDto = new UserDto();
		BeanUtils.copyProperties(user, userDto);
		logger.info("加载基本之后的用户信息userdto={}", JSON.toJSONString(userDto));

		logger.info("获取用户的角色信息");
		List<RoleDto> roleList = roleService.queryRolesByUserId(id); // 获取用户的角色
		userDto.setRoleDtos(roleList);

		List<MenuDto> allMenuDtoList = new ArrayList<>();

		for (RoleDto roleDto : roleList) {
			List<MenuDto> menuDtoList = menuService.querymenusByRoleId(roleDto
					.getId());
			allMenuDtoList.addAll(menuDtoList);

		}
		userDto.setResources(allMenuDtoList); //
		// allMenuDtoList = menuService.queryAllMenus();
		logger.info("获取到的用户所有资源信息，menuDtoList={}",
				JSON.toJSONString(allMenuDtoList));
		/*
		 * logger.info("获取所有的子系统code"); Set<String> dictValues = new
		 * HashSet<String>(); if (!CollectionUtils.isEmpty(allMenuDtoList)) {
		 * for (MenuDto menuDto : allMenuDtoList) { if (menuDto.getProjCode() !=
		 * null) { dictValues.add(menuDto.getProjCode()); // 累积所有的dictvalue } }
		 * 
		 * }
		 */

		logger.info("构建系统菜单,根据proj_code进行分类...");
		Set<MenuDto> sysMenus = new TreeSet<MenuDto>();
		for (MenuDto menuDto : allMenuDtoList) {
			MenuDto dto = new MenuDto();
			dto.setId(menuDto.getProjCode());
			dto.setName(menuDto.getProjCode());
			dto.setProjCode(menuDto.getProjCode());
			dto.setSort(String.valueOf(menuDto.getProjCode().hashCode()));
			sysMenus.add(dto);
		}

		logger.info("逐级构建 menu树,根据menu_mark进行分类...");
		Set<MenuDto> groupMenus = new HashSet<MenuDto>();// 一级菜单
		List<MenuDto> usedMenuDtoList = new ArrayList<MenuDto>(allMenuDtoList);
		if (!CollectionUtils.isEmpty(usedMenuDtoList)) {
			// 构建一级菜单 parent_id=1
			for (Iterator<MenuDto> its = usedMenuDtoList.iterator(); its
					.hasNext();) {
				MenuDto menuDto = its.next();
				/*
				 * if (topMenuParentId.equals(menuDto.getParentId())) {
				 * groupMenus.add(menuDto); its.remove(); // 去掉，逐级的删 } else if
				 * (sysMenuParentId.equals(menuDto.getParentId())) {
				 * its.remove(); }
				 */

				if (groupMenuMark.equals(menuDto.getMenuMark())) {
					groupMenus.add(menuDto);
					its.remove();
				} else {
					if (!commonMenuMark.equals(menuDto.getMenuMark())) {
						its.remove();
					}
				}
			}

		}
		setsubMenu2(groupMenus, usedMenuDtoList);
		logger.info("menuTree={}", JSON.toJSONString(groupMenus));

		// 构建sys菜单下的子菜单
		for (MenuDto sysMenu : sysMenus) {
			for (MenuDto topMenu : groupMenus) {
				if (sysMenu.getProjCode().equals(topMenu.getProjCode())) {
					if (topMenu.getSubMenus() != null) {
						sysMenu.addSubMenu(topMenu);
					}
				}
			}
		}

		// 循环设置系统菜单名字
		for (MenuDto sysMenu : sysMenus) {
			DictDto dto = dictService.queryLabelByValue("SYS_CODE",
					sysMenu.getProjCode());
			if (dto != null && dto.getLabel() != null) {
				sysMenu.setName(dto.getLabel());
				sysMenu.setSort(dto.getSort());
			}
			if (sysMenu.getSubMenus() != null) {
				userDto.addMenuDto(sysMenu);
			}
		}
		// userDto.setMenuDtos(sysMenus);

		logger.info("last userDto={}", JSON.toJSONString(userDto));
		return userDto;
	}

	@Autowired
	private DictService dictService;

	private void setsubMenu2(Set<MenuDto> parentMenuList,
			List<MenuDto> usedMenuDtoList) {
		if (CollectionUtils.isEmpty(parentMenuList)
				|| CollectionUtils.isEmpty(usedMenuDtoList)) {
			return;
		}
		if (!CollectionUtils.isEmpty(usedMenuDtoList)) {
			// 构建下级菜单
			for (MenuDto topMenu : parentMenuList) {
				setSubMenu(topMenu, usedMenuDtoList);
			}
		}

		if (!CollectionUtils.isEmpty(usedMenuDtoList)) {
			for (MenuDto topMenu : parentMenuList) {
				setsubMenu2(topMenu.getSubMenus(), usedMenuDtoList); // 深度优先递归往下找
			}
		}

	}

	private void setSubMenu(MenuDto prentMenu, List<MenuDto> usedMenuDtoList) {
		if (CollectionUtils.isEmpty(usedMenuDtoList)) {
			return;
		}
		for (Iterator<MenuDto> its = usedMenuDtoList.iterator(); its.hasNext();) {
			MenuDto menuDto = its.next();
			if (prentMenu.getId().equals(menuDto.getParentId())) {
				prentMenu.addSubMenu(menuDto);
				its.remove(); // 去掉，逐级的删
			}
		}
	}

	@Override
	public UserDto queryUserByUserName(String userName) {
		String userid = userDao.queryUserIdByLoginName(userName);
		User u = userDao.queryUserById(userid);
		UserDto dto = new UserDto();
		BeanUtils.copyProperties(u, dto);
		return dto;
	}
}
