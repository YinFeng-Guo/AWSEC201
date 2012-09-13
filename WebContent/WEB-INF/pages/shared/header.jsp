<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
	boolean isSuper = false;
	if(session.getAttribute("isSuper") != null && session.getAttribute("isSuper").toString().equals("true")){
		isSuper = true;
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="Shortcut Icon" href="/AWSEC201/images/ico.ico">
<link rel="alternate" 				href="<%=request.getContextPath() %>/css/theme01/common.css" type="text/css" title="white" media="screen, projection"/> 
<link rel="alternate stylesheet" 	href="<%=request.getContextPath() %>/css/theme02/common.css" type="text/css" title="green" media="screen, projection"/> 
<link rel="alternate stylesheet" 	href="<%=request.getContextPath() %>/css/theme03/common.css" type="text/css" title="yellow" media="screen, projection"/>
<link rel="alternate stylesheet" 	href="<%=request.getContextPath() %>/css/theme04/common.css" type="text/css" title="red" media="screen, projection"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>

<style type="text/css">
<!--
body{font:12px Arial,Verdana,Tahoma;}
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}

.clearfix:after {
    content: "\0020";
    display: block;
    height: 0;
    clear: both;
}
.clearfix {
    _zoom: 1;
}
*+html .clearfix {
	overflow:auto;
}

.menu_navcc{width:100%; margin:0 auto;}
.menu_nav{width:100%;height:48px;background:url(/AWSEC201/images/nav_bg.gif) repeat-x;float:left;margin-top:0px;}
.menu_nav .nav_content{padding-left:25px;background:url(/AWSEC201/images/nav_l_bg.gif) no-repeat;float:left;}
.menu_nav .nav_content li{width:88px;height:48px;padding-left:15px;padding-right:13px;background:url(/AWSEC201/images/nav_li_right.gif) no-repeat right center;float:left;line-height:48px;text-align:center;font-size:14px;font-weight:bold;}
.menu_nav .nav_content li a{color:#fff;width:88px;height:48px;display:block;}
.menu_nav .nav_content li.current{line-height:37px;}
.menu_nav .nav_content li em{background:url(/AWSEC201/images/bid_new.gif) no-repeat;width:35px;height:21px;display:inline-block;position:absolute;top:-20px;left:40px;}

.menu_nav .nav_content li.current a,.menu_nav .nav_content li a:hover{width:88px;height:37px;background:url(/AWSEC201/images/nav_li_current.gif) no-repeat;display:block;color:#fff;}
.menu_nav .nav_content li a:hover{background:url(/AWSEC201/images/nav_li_hover.gif) no-repeat;line-height:37px;text-decoration:none;}

.menu_nav_right{padding-right:20px;background:url(/AWSEC201/images/nav_r_bg.gif) no-repeat right top;float:right;margin-left:50px;padding-top:13px;height:23px;padding-bottom:12px;}
p{
margin-bottom:15px}
-->
</style>
<script>
function setActiveStyleSheet(title) { 
	  var i, a, main; 
	  if (title) { 
	  for(i=0; (a = document.getElementsByTagName('link')[i]); i++) { 
	  if(a.getAttribute('rel').indexOf('style') != -1 && a.getAttribute('title')) { 
	  a.disabled = true; 
	  if(a.getAttribute('title') == title) a.disabled = false; 
	  } 
	  } 
	  } 
	  } 
	  function getActiveStyleSheet() { 
	  var i, a; 
	  for(i=0; (a = document.getElementsByTagName('link')[i]); i++) { 
	  if(a.getAttribute('rel').indexOf('style') != -1 && a.getAttribute('title') && !a.disabled) return a.getAttribute('title'); 
	  } 
	  return null; 
	}
</script>
</head>
<body style="text-align:center">

	<div style="height:100px;text-align:left;margin-top:2px;min-width:1580px;" >
		<div id="logo" style="text-align:right;">
			<img width="442px" src="/AWSEC201/images/CWLogo.png" style="float:left;margin: 15px 0"/>
			<img style="float:left;" src="/AWSEC201/images/banner.gif"/>
			<div >
				<div style="text-align:center;">
					<span style="font-size:12px; font-weight:bolder;"><spring:message code="welcome"/>, <% out.println(session.getAttribute("username")==null?"Guest":session.getAttribute("username")); %></span>
				</div>
				<br/>
				<div style="text-align:center;">
					<a href="javascript :void()" onclick="setActiveStyleSheet('red'); return false;" title="red style">Red</a>&nbsp;
					<a href="javascript :void()" onclick="setActiveStyleSheet('green'); return false;" title="green style">Green</a> &nbsp;
					<a href="javascript :void()" onclick="setActiveStyleSheet('yellow'); return false;" title="yellow style">Yellow</a> &nbsp;
					<a href="javascript :void()" onclick="setActiveStyleSheet('none'); return false;" title="none style">None</a> 	
					<a href="javascript :void()" onclick="setActiveStyleSheet('grey'); return false;" title="just style">other</a>
				</div>
				<br/>
				<div>
					<a href="<%=request.getContextPath() %>/logout.action" title="Logout"><span style="font-size:16px; font-weight:bolder;">&nbsp;[&nbsp;<spring:message code="logout"/>&nbsp;]&nbsp;</span></a>
				</div>
			</div>
		</div>
	</div>

<!-- 	<div style="clear:both"></div> -->
	<!--nav,start-->
	<div class="menu_navcc">
	<div class="menu_nav clearfix">
	<ul class="nav_content">
		<% 
			if(isSuper){
		%> 
		<li id="productTab"><a href="<%=request.getContextPath() %>/product/loadProducts.action" title="Products"><span><spring:message code="products"/></span></a></li>
		<% } %> 
		<li id="movementTab"><a href="<%=request.getContextPath() %>/movement/loadMovms.action" title="Movements"><span><spring:message code="movements"/></span></a></li>
		<li style="position:relative;"><a href="#" title="Help"><span><spring:message code="help"/></span></a><em></em></li>
		<li id="technicalTab"><a href="<%=request.getContextPath() %>/technical.action" title="Testings"><span>Testings</span></a></li>
	</ul>
	<div class="menu_nav_right">
	</div>
	</div>
	</div>
	<!--nav,end-->


</body>
</html>





