package com.aldb.ops.common;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jasig.cas.client.util.AbstractCasFilter;
import org.jasig.cas.client.validation.Assertion;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.aldb.ops.entity.UserDto;
import com.aldb.ops.service.UserService;

/**
 * 根据单点登陆的信息，自动获取用户信息及相应的的菜单权限
 */
public final class AutoSetUserDetailFilter implements Filter {
    private Logger logger = LoggerFactory.getLogger(AutoSetUserDetailFilter.class);

    private String userNotExistUrl;
    private UserService userService;

    public void setUserNotExistUrl(String userNotExistUrl) {
        this.userNotExistUrl = userNotExistUrl;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    /**
     * Default constructor.
     */
    public AutoSetUserDetailFilter() {
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
        // do nothing
    }

    /**
     * 过滤逻辑：首先判断单点登录的账户是否已经存在本系统中， 如果不存在，使用用户查询接口查询出用户对象并设置在Session中
     * 
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest httpRequest, ServletResponse httpResponse, FilterChain chain)
            throws IOException, ServletException {
        logger.info("根据用户已登陆...");
        HttpServletRequest request = (HttpServletRequest) httpRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) httpResponse;
        HttpSession session = request.getSession(false);
        try {
            if (session != null) {

                if (session.getAttribute(SystemSecurityHolder.SESSION_USER) == null) {
                    logger.info("加载用户信息及权限");
                    Object object = session.getAttribute(AbstractCasFilter.CONST_CAS_ASSERTION);
                    if (object != null) {
                        Assertion assertion = (Assertion) object;
                        String loginName = assertion.getPrincipal().getName();
                        UserDto userDto = userService.loadUserAllInfoByLoginName(loginName);

                        if (userDto != null) {
                            request.getSession().setAttribute(SystemSecurityHolder.SESSION_USER, userDto);
                            request.getSession().setAttribute("customerId", userDto.getId());
                            request.getSession().setAttribute("loginName", loginName);
                            request.getSession().setAttribute("loginTime",
                                    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
                            request.getSession().setAttribute("casConfig", casConfig);
                            
                           
                       
                        
                            String sessionId=request.getSession().getId();
                            LogoutHttpSessionListener.cachedUserResourced(sessionId, loginName, userDto.getResources());
                        
                        
                   
                        } else {
                            request.getRequestDispatcher(userNotExistUrl).forward(httpRequest, httpResponse);
                            return;
                        }

                    }
                }

                if (session.getAttribute(SystemSecurityHolder.SESSION_USER) != null) {
                    SystemSecurityHolder.setCurrentUser((UserDto) session
                            .getAttribute(SystemSecurityHolder.SESSION_USER));// 当前用户信息存放到线程中
                }
            }
            logger.info("用户信息加载完成...");
            chain.doFilter(httpRequest, httpResponse);
        } finally {
            SystemSecurityHolder.removeCurrentUser();
        }

    }

    @Autowired
    private CasConfig casConfig;

    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig filterConfig) throws ServletException {

    }

}