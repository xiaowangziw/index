<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static" />


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>魔法金后台管理系统</title>
<meta content="魔法金后台管理系统" name="description">
<meta content="魔法金后台管理系统" name="keywords">
<link rel="stylesheet" href="${ctxStatic}/aliyun/css/global.css">
<link rel="stylesheet" href="${ctxStatic}/aliyun/css/common-header9.css">
<style>
#top {

	background-color: #f2f2f2;

}


#logo {
	 height: 49px;
    width: 318px;
    position: absolute;
    top: 20px;
    left: 46px;
   /* background: url(/ops-index/static/images/index/logo.jpg);*/ 
}

#system_name {
	    height: 49px;
    width: 318px;
    position: absolute;
    /* top: 45px; */
    left: 40%;
    /* color: white; */
    margin-top: 10px;
    font-size: 30px;
    font-family: 'Microsoft Yahei',Tahoma,Arial,Helvetica,Simsun,STHeiti;
    /* text-align: center; */
}


#system_information {
	    height: 40px;
    width: 200px;
    position: absolute;
    /* top: 50px; */
    right: 10px;
    font-size: 12px;
    /* color: white; */
    margin-top: 10px;
}
</style>
</head>
<body>

	<div id="top" class="ali-common-header">
			<div id="logo"></div>
			<div id="system_name">后台管理系统</div>
			<div id="system_information">
						<div id="user_name">登录用户:${loginName}</div>
			<div id="login_time">登录时间:${loginTime}</div>
			<div>
				<a class="logout" href="${casConfig.casServerUrl}/logout?service=${casConfig.clientServerUrl}${ctx}/index2" >退        出</a>
			</div>
			</div>
	</div>
	



	<div>
		<div class="ali-common-header">
			<div class="ali-common-header-inner common-header-clearfix">
				<!-- 运营专区 -->

				<!-- 导航菜单 -->
				<ul class="menu item pull-left" id="J_common_header_menu">
				</ul>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="${ctxStatic}/jquery/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/aliyun/js/base-all.js"></script>
	<script type="text/javascript"
		src="${ctxStatic}/aliyun/js/common-header.js"></script>
	<script type="text/javascript">
		var host = "/ops-index";

		$(document).ready(function() {

			getMenu();

		});
		function getMenu() {
			$.ajax({
				type : 'POST',
				url : host + '/menu/getMenuByAjax',
				data : {
					'customerId' : 1
				},
				dataType : 'json',
				error : function() {
					alert('error');
				},
				complete : function(data) {
				},
				success : function(data) {
					//alert(JSON.stringify(data));
					createTopMenuItems(data);
				}
			});
		}

		function createTopMenuItems(topMenuItems) {

			for (var i = 0; i < topMenuItems.length; i++) {

				var $topMenuItemWithSubMenu = $('<li></li>');
				$topMenuItemWithSubMenu.addClass('top-menu-item');
				$topMenuItemWithSubMenu.attr('has-dropdown', 'true');
				//$topMenuItemWithSubMenu.attr('menu-type', 'solution');

				var $topMenuItem = $('<span></span>');
				$topMenuItem.addClass('menu-hd').html(topMenuItems[i].name);

				// create menu panels	
				var subMenus = topMenuItems[i].subMenus;
				var $menuP1 = $('<div></div>');
				$menuP1.addClass('menu-dropdown solutions solution-bg');

				var $menuP2 = $('<div></div>');
				$menuP2
						.addClass('menu-dropdown-inner module-padding solution-inner common-header-clearfix');

				$menuP1.append($menuP2);

				for (var j = 0; j < subMenus.length; j++) { // 二级菜单
					var $subMenuP3 = $('<div></div>');
					if (j == subMenus.length - 1) {
						$subMenuP3.addClass('module-wrap last');
					} else {
						$subMenuP3.addClass('module-wrap ');
					}
					var $subMenuP4 = $('<div></div>');
					$subMenuP4.addClass('module-hd').html(subMenus[j].name);

					$subMenuP3.append($subMenuP4);

					$subMenuP3.css('width:180px');

					var $subSubMenuP5s = $('<div></div>');
					$subSubMenuP5s.addClass('module-bd');
					var subSubMenus = subMenus[j].subMenus;
					for (var k = 0; k < subSubMenus.length; k++) {
						var $subSubMenuPanel = $('<a target="_blank"></a>');
						$subSubMenuPanel.html(subMenuName(subSubMenus[k].name));
						$subSubMenuPanel.attr('id', subSubMenus[k].id);
						$subSubMenuPanel.attr('href', subSubMenus[k].href);
						$subSubMenuP5s.append($subSubMenuPanel);

					}
					if ($subSubMenuP5s.children().size() > 0)
						$subMenuP3.append($subSubMenuP5s);
					$menuP2.append($subMenuP3);
				}

				/*
					$menuPanel.css('width', menuPanelWidth);
				 */
				$topMenuItemWithSubMenu.append($topMenuItem);
				$topMenuItemWithSubMenu.append($menuP1);
				$('#J_common_header_menu').append($topMenuItemWithSubMenu);

			}

			addEvent();
		}

		function maxSix(num) {
			if (num > 6)
				return 6;
			return num;
		}

		function subMenuName(menuName) {
			if (menuName.length > 12)
				return menuName.substr(0, 12);
			return menuName;
		}

		function addEvent() {

			$('.link span').mouseover(function() {
				$('.link span').css('background', '');
				$(this).css('cursor', 'pointer');
				$(this).css('background', '#cccccc');
			});

			$('.link span').click(function() {
				var url = $(this).parent().attr('id');
				if (url.search("http") == -1) {
					url = '..' + url;
				}
				window.open(url);
			});
		}
	</script>
</body>
</html>