/**
 * 
 */
package com.aldb.ops.entity;

import java.beans.Transient;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/**
 * @author Administrator
 *
 */
public class UserDto implements Serializable {

    private static final long serialVersionUID = -5777184037228695778L;
    /**
     * CREATE TABLE `sys_user` ( `id` varchar(64) NOT NULL COMMENT '编号',
     * `login_name` varchar(100) NOT NULL COMMENT '登录名', `password` varchar(100)
     * NOT NULL COMMENT '密码', `no` varchar(100) DEFAULT NULL COMMENT '工号',
     * `name` varchar(100) NOT NULL COMMENT '姓名', `email` varchar(200) DEFAULT
     * NULL COMMENT '邮箱', `phone` varchar(200) DEFAULT NULL COMMENT '电话',
     * `mobile` varchar(200) DEFAULT NULL COMMENT '手机', `user_type` char(1)
     * DEFAULT NULL COMMENT '用户类型', `photo` varchar(1000) DEFAULT NULL COMMENT
     * '用户头像', `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
     * `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间', `login_flag`
     * varchar(64) DEFAULT NULL COMMENT '是否可登录', `create_by` varchar(64) NOT
     * NULL COMMENT '创建者', `create_date` datetime NOT NULL COMMENT '创建时间',
     * `update_by` varchar(64) NOT NULL COMMENT '更新者', `update_date` datetime
     * NOT NULL COMMENT '更新时间', `remarks` varchar(255) DEFAULT NULL COMMENT
     * '备注信息', `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记', PRIMARY
     * KEY (`id`), KEY `sys_user_login_name` (`login_name`), KEY
     * `sys_user_update_date` (`update_date`), KEY `sys_user_del_flag`
     * (`del_flag`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表'
     */
    // 用户的基本信息
    // 用户的基本信息
    private String id;
    private String loginName;
    private String no;
    private String name;
    private String email;
    private String phone;
    private String mobile;
    private String userType;
    private String photo;
    private String loginIp;
    private String loginDate;
    private String loginFlag;
    private String createBy;
    private Date createDate;
    private String updateBy;
    private Date updateDate;
    private String remarks;
    private String delFlag;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    public String getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(String loginDate) {
        this.loginDate = loginDate;
    }

    public String getLoginFlag() {
        return loginFlag;
    }

    public void setLoginFlag(String loginFlag) {
        this.loginFlag = loginFlag;
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

    /*
     * 该用户拥有的所有角色
     */
    
    private transient List<RoleDto> roleDtos;
    /*
     * 该用户拥有的所有资源
     */
    private transient List<MenuDto> resources;
    
    
    private List<DictDto> dictDtoList;
    private Set<MenuDto> menuDtos;

    public List<DictDto> getDictDtoList() {
        return dictDtoList;
    }

    public void setDictDtoList(List<DictDto> dictDtoList) {
        this.dictDtoList = dictDtoList;
    }

   

    public Set<MenuDto> getMenuDtos() {
        return menuDtos;
    }

    public void addMenuDto(MenuDto menuDto) {
    	if(this.menuDtos==null){
    		this.menuDtos=new TreeSet<MenuDto>();
    	}
        this.menuDtos.add(menuDto);
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    public List<RoleDto> getRoleDtos() {
        return roleDtos;
    }

    public void setRoleDtos(List<RoleDto> roleDtos) {
        this.roleDtos = roleDtos;
    }

	public List<MenuDto> getResources() {
		return resources;
	}

	public void setResources(List<MenuDto> resources) {
		this.resources = resources;
	}
    
  

}
