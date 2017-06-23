/**
 * 
 */
package com.aldb.ops.dao;

import java.util.List;

import com.aldb.ops.dao.bean.Menu;

/**
 * @author Administrator
 *
 */
public interface MenuDao {

    
    
    List<Menu> querymenusByRoleId(String roleId);
    
    
    List<Menu> queryAllMenus();
}
