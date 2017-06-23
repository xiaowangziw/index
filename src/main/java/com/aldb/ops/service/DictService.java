/**
 * 
 */
package com.aldb.ops.service;

import com.aldb.ops.entity.DictDto;


/**
 * @author Administrator
 *
 */
public interface DictService {

	
	//根据value查询所有的系统名称与code
	DictDto queryLabelByValue(String type,String value);
}
