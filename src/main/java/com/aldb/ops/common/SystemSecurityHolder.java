/*
 * 项目名称:base<br>
 * 包名:com.cares.common<br>
 *
 * 公司:上海民航华东凯亚系统集成有限公司<br>
 * CopyRight 1999-2010 Cares, Inc. All rights reserved.<br>
 */

package com.aldb.ops.common;

import com.aldb.ops.entity.UserDto;

/**
 * 权限实体存放类
 * 
 * @author Administrator
 *
 */
public class SystemSecurityHolder {
    public static final String SESSION_USER = "session-user";
    public static final String SESSION_AUTHENTICATION = "session-authentication";

    private static ThreadLocal<UserDto> THREAD_LOCAL = new ThreadLocal<UserDto>();

    /**
     * 把用户信息存放到当前线程
     * 
     * @param user
     */
    public static void setCurrentUser(UserDto user) {
        THREAD_LOCAL.set(user);
    }

    /**
     * 从当前线程中获取用户
     * 
     * @return
     */
    public static UserDto getCurrentUser() {
        UserDto user = THREAD_LOCAL.get();

        return user;
    }

    /**
     * 从当前线程中删除用户
     */
    public static void removeCurrentUser() {
        THREAD_LOCAL.remove();

    }

}
