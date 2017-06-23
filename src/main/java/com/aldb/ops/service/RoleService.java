/**
 * 
 */
package com.aldb.ops.service;

import java.util.List;

import com.aldb.ops.entity.RoleDto;

/**
 * @author Administrator
 *
 */
public interface RoleService {

	
	List<RoleDto> queryRolesByUserId(String userId);
	
}
