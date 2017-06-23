/**
 * 
 */
package com.aldb.ops.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.aldb.ops.entity.MenuDto;

/**
 * @author sunff
 * 
 */
public class LogoutHttpSessionListener implements HttpSessionListener {

	private static final ConcurrentHashMap<String/* loginName */, Map<String/* sysCode */, List<MenuDto>>> userResourceCached = new ConcurrentHashMap<>();
	private static final ConcurrentHashMap<String/* sessionId */, String/* loginName */> sessionIdCached = new ConcurrentHashMap<>();

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// TODO Auto-generated method stub

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		String sessionId = se.getSession().getId();
		System.out.println("sessionId=" + sessionId + "destory");
		invalidUserResources(sessionId);
	}

	public static void cachedUserResourced(String sessionId, String loginName,
			List<MenuDto> allResources) {
		if (sessionId == null) {
			return;
		}
		sessionIdCached.put(sessionId, loginName);
		Map<String/* sysCode */, List<MenuDto>> resourceMap = new HashMap<>();
		for (MenuDto m : allResources) {
			List<MenuDto> menuSet = resourceMap.get(m.getProjCode());
			if (menuSet == null) {
				menuSet = new ArrayList<>();
				resourceMap.put(m.getProjCode(), menuSet);

			}
			menuSet.add(m);
		}

		userResourceCached.put(loginName, resourceMap);
	}

	public static List<MenuDto> getUserResources(String loginName,
			String sysCode) {
		Map<String/* sysCode */, List<MenuDto>> resourceMap = userResourceCached
				.get(loginName);
		return resourceMap.get(sysCode);
	}

	private void invalidUserResources(String sessionId) {
		String loginName = sessionIdCached.get(sessionId);
		sessionIdCached.remove(sessionId);
		userResourceCached.remove(loginName);
	}
}
