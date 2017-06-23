/**
 * 
 */
package com.aldb.ops.dao.bean;

/**
 * @author Administrator
 *
 */
public class Role extends AbstractBean {

    /**
     * | CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表' |
     */
    
    
    private String id;
    private String name;
    private String enname;
    private String roleType;
    private String dataScope;
    
    private String isSys;
    private String useable;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEnname() {
        return enname;
    }
    public void setEnname(String enname) {
        this.enname = enname;
    }
    public String getRoleType() {
        return roleType;
    }
    public void setRoleType(String roleType) {
        this.roleType = roleType;
    }
    public String getDataScope() {
        return dataScope;
    }
    public void setDataScope(String dataScope) {
        this.dataScope = dataScope;
    }
    public String getIsSys() {
        return isSys;
    }
    public void setIsSys(String isSys) {
        this.isSys = isSys;
    }
    public String getUseable() {
        return useable;
    }
    public void setUseable(String useable) {
        this.useable = useable;
    }
   
    
    
    
}
