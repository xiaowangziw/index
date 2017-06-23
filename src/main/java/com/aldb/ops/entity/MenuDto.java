/**
 * 
 */
package com.aldb.ops.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * @author Administrator
 * 
 */
public class MenuDto implements Serializable, Comparable<MenuDto> {

	/**
     * 
     */
	private static final long serialVersionUID = 6555347088499802654L;

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

	private String createBy;
	private Date createDate;
	private String updateBy;
	private Date updateDate;
	private String remarks;
	private String delFlag;

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

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	// 增加子menu列表字段

	private Set<MenuDto> subMenus;

	public Set<MenuDto> getSubMenus() {
		return subMenus;
	}

	public void addSubMenu(MenuDto subMenu) {
		// this.subMenuSet = subMenuSet;
		if (this.subMenus == null) {
			this.subMenus = new TreeSet<>();
		}
		this.subMenus.add(subMenu);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MenuDto other = (MenuDto) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public int compareTo(MenuDto o) {
		if (this.sort != null && o.sort != null) {
			Integer firstSort = 1000;
			Integer secondSort = 1000;
			try {
				firstSort = Integer.valueOf(this.sort);
			} catch (Exception e) {
				firstSort = 1000;
			}
			try {
				secondSort = Integer.valueOf(o.sort);
			} catch (Exception e) {
				secondSort = 1000;
			}
			return firstSort.compareTo(secondSort) ;
		} else {
			return 0;
		}

		// return this.sort;
	}

	/*
	 * public List<MenuDto> getSubMenuList() { return subMenuList; }
	 * 
	 * public void addSubMenu(MenuDto subMenu) { if(subMenuList==null){
	 * this.subMenuList=new ArrayList<MenuDto>(); }
	 * this.subMenuList.add(subMenu); }
	 */

}
