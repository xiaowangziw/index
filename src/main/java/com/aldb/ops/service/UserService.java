/**
 * 
 */
package com.aldb.ops.service;

import com.aldb.ops.entity.UserDto;

/**
 * @author Administrator
 *
 */
public interface UserService {

	
	/**
	 * 根据登录名查询用户id
	 * @param loginName
	 * @return
	 */
	String queryUserByLoginName(String loginName);
	
	UserDto loadUserAllInfoById(String id);
	
	UserDto loadUserAllInfoByLoginName(String loginName);
	
	UserDto queryUserByUserName(String userName);
	
	
	
}
