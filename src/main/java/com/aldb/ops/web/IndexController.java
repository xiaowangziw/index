/**
 * 
 */
package com.aldb.ops.web;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aldb.ops.common.SystemSecurityHolder;
import com.aldb.ops.entity.MenuDto;
import com.aldb.ops.entity.UserDto;
import com.aldb.ops.service.UserService;

/**
 * @author Administrator
 * 
 */
@Controller
public class IndexController {

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	
	
	@RequestMapping("/index2")
    public String index2() {
        return "index2";
    }

	
	@RequestMapping("/index3")
    public String index3() {
        return "index3";
    }

	
	@RequestMapping("/menu/getMenuByAjax")
	@ResponseBody
	public Set<MenuDto> getMenu(HttpServletRequest request) {

		UserDto dto = (UserDto) request.getSession().getAttribute(
				SystemSecurityHolder.SESSION_USER);
		if (dto == null||dto.getMenuDtos()==null) {
			String customerId = request.getParameter("customerId");
			dto = userService.loadUserAllInfoById(customerId);
		}
		return dto.getMenuDtos();
	}

	@Autowired
	private UserService userService;
}
