/**
 * 
 */
package com.aldb.ops.dao.bean;

/**
 * @author Administrator
 * 
 */
public class Menu extends AbstractBean {

	/**
	 * CREATE TABLE `sys_menu` ( `id` varchar(64) NOT NULL COMMENT '编号',
	 * `parent_id` varchar(64) NOT NULL COMMENT '父级编号', `parent_ids`
	 * varchar(2000) NOT NULL COMMENT '所有父级编号', `name` varchar(100) NOT NULL
	 * COMMENT '名称', `sort` decimal(10,0) NOT NULL COMMENT '排序', `href`
	 * varchar(2000) DEFAULT NULL COMMENT '链接', `target` varchar(20) DEFAULT
	 * NULL COMMENT '目标', `icon` varchar(100) DEFAULT NULL COMMENT '图标',
	 * `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示', `permission` varchar(200)
	 * DEFAULT NULL COMMENT '权限标识', `create_by` varchar(64) NOT NULL COMMENT
	 * '创建者', `create_date` datetime NOT NULL COMMENT '创建时间', `update_by`
	 * varchar(64) NOT NULL COMMENT '更新者', `update_date` datetime NOT NULL
	 * COMMENT '更新时间', `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
	 * `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记', `proj_code`
	 * varchar(50) DEFAULT NULL COMMENT '子系统code', PRIMARY KEY (`id`), KEY
	 * `sys_menu_parent_id` (`parent_id`), KEY `sys_menu_del_flag` (`del_flag`)
	 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表' |
	 */

	private String id;
	private String parentId;
	private String parentIds;
	private String name;
	private String sort;
	private String href;
	private String target;
	private String icon;
	private String isShow;
	private String permission;

	private String projCode;

	private String menuMark;

	public String getMenuMark() {
		return menuMark;
	}

	public void setMenuMark(String menuMark) {
		this.menuMark = menuMark;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getParentIds() {
		return parentIds;
	}

	public void setParentIds(String parentIds) {
		this.parentIds = parentIds;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getIsShow() {
		return isShow;
	}

	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public String getProjCode() {
		return projCode;
	}

	public void setProjCode(String projCode) {
		this.projCode = projCode;
	}

}
