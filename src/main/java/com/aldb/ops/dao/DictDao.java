/**
 * 
 */
package com.aldb.ops.dao;

import java.util.Map;

import com.aldb.ops.dao.bean.Dict;


/**
 * @author sunff
 *
 */
public interface DictDao {

	
	Dict queryDictByValue(Map<String,String> paras);
}
