<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>


<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    
    
    <title>首页</title>
    
    <style>
   
body, div {margin:0px; padding:0px;}
    	
body {font-size:12px;font-family:'Microsoft Yahei',Tahoma,Arial,Helvetica,Simsun,STHeiti;}

#logo {
	height: 49px;
	width: 318px;
	position: absolute;
	top: 40px;
	left: 46px;
	/*background: url('${ctxStatic}/images/index/logo.jpg');*/
}
      
#menu_context {
	height: 77px; /* 必须设高 */
	position: absolute;
	top: 118px;
}
     
#menu {
	height: 100%;
	background: url('${ctxStatic}/images/index/nav-background.png') right top;
	position: relative;
	margin: 0 auto;
	padding-left:46px;
}

#menu_diagonal_mask {
	height: 71px;
	width: 1004px;
	position: absolute;
	top: 0px;
	left: 0px;
	background: url('${ctxStatic}/images/index/nav-diagonals.png');
}
      
.top_menu_item_with_sub_menu {
	height: 69px;
	margin-top: 2px;
	float: left;	
	position:relative;
	border-left: 1px solid #548ba8;
	border-right: 1px solid #104669;
	border-left: 1px solid rgba(255, 255, 255, 0.2);
	border-right: 1px solid rgba(0, 0, 0, 0.3);
}

.top_menu_item {
	padding: 0px 20px 0px 20px;
	color: white;
	font-size: 14px;
	font-weight: bold;
	letter-spacing:1px;
}

.menuPanel {
	position:absolute;
	display:none;
	background: url('${ctxStatic}/images/index/texture-light.png');
	box-shadow: 2px 2px 10px #072E4A;
	top:69px; 
	padding-bottom: 10px;
}

body {
	background: url('${ctxStatic}/images/index/bg-home.png');
}

#big_image_div {
	width: 1024px;
	height: 710px;
	margin: 0 auto;
	position: relative;
}

#system_name {
	height: 49px;
	width: 318px;
	position: absolute;
	top: 45px;
	left: 384px;
	font-size: 30px;
	color: white;
	margin-top: 10px;
}

#system_information {
	height: 40px;
	width: 200px;
	position: absolute;
	top: 50px;
	right: 10px;
	font-size: 12px;
	color: white;
	margin-top: 10px;
}

#system_information div {
	float: left;
	margin-left: 10px;
}
   
   .logout{
   		    color: red;
    		text-decoration: none;

   }
   
    </style>
</head>

<body>
	<input type="text" value="${customerId}" id="customerId" hidden="true">
	<input type="text" value="${ctx}" id="ctx" hidden="true">

	<div id="big_image_div">
	
		<div id="logo"></div>
		<div id="system_name">后台管理系统</div>
		
		<div id="system_information">
			<div id="user_name">登录用户:${loginName}</div>
			<div id="login_time">登录时间:${loginTime}</div>
			<div>
				<a class="logout" href="${casConfig.casServerUrl}/logout?service=${casConfig.clientServerUrl}${ctx}/index" >退        出</a>
			</div>
		</div>
		<div id="menu_context">
			<div id="menu">
		
				<div id="menu_diagonal_mask"></div>
			</div>
		</div>
		
		<div style="position: absolute;bottom:0px;right:0px;">
			
		</div>
	</div>
	
	
	<script src="${ctxStatic}/jquery/jquery-1.9.1.min.js"></script>
    <script src="${ctxStatic}/jquery/index.js"></script>
</body>

</html>