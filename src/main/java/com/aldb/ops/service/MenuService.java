package com.aldb.ops.service;

import java.util.List;

import com.aldb.ops.entity.MenuDto;

public interface MenuService {

	// List<Menu> queryMenusBySysCode(String sysCode);

	/**
	 * 根据roleId查询菜单
	 * 
	 * @param roleId
	 * @return
	 */
	List<MenuDto> querymenusByRoleId(String roleId);

	MenuDto queryMenuById(String id);

	/**
	 * @return
	 */
	List<MenuDto> queryAllMenus();

	/**
	 * 查询该用户在该系统拥有的资源
	 * 
	 * @param loginName
	 * @param projCode
	 * @return
	 */
	List<MenuDto> queryUserProjMenus(String loginName, String projCode);
}
