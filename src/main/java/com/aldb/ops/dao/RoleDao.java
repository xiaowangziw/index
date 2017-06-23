/**
 * 
 */
package com.aldb.ops.dao;

import java.util.List;

import com.aldb.ops.dao.bean.Role;

/**
 * @author Administrator
 *
 */
public interface RoleDao {

    
    
    List<Role> queryRolesByUserId(String userId);
}
