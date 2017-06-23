/**
 * 
 */
package com.aldb.ops.service.support;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aldb.ops.dao.DictDao;
import com.aldb.ops.dao.bean.Dict;
import com.aldb.ops.entity.DictDto;
import com.aldb.ops.service.DictService;

/**
 * @author sunff
 * 
 */
@Service
public class DictServiceImpl implements DictService {

	@Autowired
	private DictDao dictDao;

	@Override
	public DictDto queryLabelByValue(String type, String value) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("type", type);
		params.put("value", value);
		Dict dict = dictDao.queryDictByValue(params);
		DictDto dto = new DictDto();
		if(dict==null){
			return null;
		}
		BeanUtils.copyProperties(dict, dto);
		return dto;
	}

}
