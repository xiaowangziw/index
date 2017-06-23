/**
 * 
 */
package com.aldb.ops.service.support;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aldb.ops.dao.RoleDao;
import com.aldb.ops.dao.bean.Role;
import com.aldb.ops.entity.RoleDto;
import com.aldb.ops.service.RoleService;

/**
 * @author Administrator
 *
 */
@Service
public class RoleServiceImpl implements RoleService {

    private Logger logger = LoggerFactory.getLogger(RoleServiceImpl.class);

    @Autowired
    private RoleDao roleDao;

    @Override
    public List<RoleDto> queryRolesByUserId(String userId) {
        logger.info("根据用户id, 加载用户角色");
        List<Role> roleList = roleDao.queryRolesByUserId(userId);
        if (roleList == null) {
            return null;
        }
        List<RoleDto> roleDtoList = new ArrayList<RoleDto>();
        for (Role r : roleList) {
            RoleDto dto = new RoleDto();
            BeanUtils.copyProperties(r, dto);
            roleDtoList.add(dto);
        }
        return roleDtoList;
    }

}
