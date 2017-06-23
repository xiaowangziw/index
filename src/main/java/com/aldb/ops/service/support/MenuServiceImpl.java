/**
 * 
 */
package com.aldb.ops.service.support;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.aldb.ops.common.LogoutHttpSessionListener;
import com.aldb.ops.dao.MenuDao;
import com.aldb.ops.dao.bean.Menu;
import com.aldb.ops.entity.MenuDto;
import com.aldb.ops.service.MenuService;

/**
 * @author Administrator
 * 
 */
@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menuDao;

	@Override
	public List<MenuDto> querymenusByRoleId(String roleId) {
		List<Menu> menuList = menuDao.querymenusByRoleId(roleId);
		if (CollectionUtils.isEmpty(menuList)) {
			return null;
		}
		List<MenuDto> menuDtos = new ArrayList<MenuDto>(menuList.size());
		for (Menu m : menuList) {
			MenuDto dto = new MenuDto();
			BeanUtils.copyProperties(m, dto);
			menuDtos.add(dto);
		}
		return menuDtos;
	}

	@Override
	public MenuDto queryMenuById(String id) {

		return null;
	}

	@Override
	public List<MenuDto> queryAllMenus() {

		List<Menu> menuList = menuDao.queryAllMenus();
		if (CollectionUtils.isEmpty(menuList)) {
			return null;
		}
		List<MenuDto> menuDtos = new ArrayList<MenuDto>(menuList.size());
		for (Menu m : menuList) {
			MenuDto dto = new MenuDto();
			BeanUtils.copyProperties(m, dto);
			menuDtos.add(dto);
		}
		return menuDtos;
	}

	@Override
	public List<MenuDto> queryUserProjMenus(String loginName, String projCode) {
		List<MenuDto> ret = LogoutHttpSessionListener.getUserResources(
				loginName, projCode);
		if (!CollectionUtils.isEmpty(ret)) {
			return ret;
		}
		// 查询数据库，待实现
		return null;
	}

}
