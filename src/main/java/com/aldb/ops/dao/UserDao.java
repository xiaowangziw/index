/**
 * 
 */
package com.aldb.ops.dao;

import com.aldb.ops.dao.bean.User;

/**
 * @author Administrator
 *
 */
public interface UserDao {

    String queryUserIdByLoginName(String loginName);

    User queryUserById(String id);
}
