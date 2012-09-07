<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="Shortcut Icon" href="/AWSEC201/images/ico.ico">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

</head>
<body style="text-align:center">
	<div style="height:100px;text-align:left;margin-top:2px;" >
		<div style="text-align:center;"><img width="442px" src="/AWSEC201/images/CWLogo.png" style="float:left;margin: 15px 0"/><img src="/AWSEC201/images/banner.gif"/></div>
	</div>
<!-- 	<div style="clear:both"></div> -->
	<!--nav,start-->
	<div class="menu_navcc">
	<div class="menu_nav clearfix">
	<ul class="nav_content">
		<li id="homeTab" class="current"><a href="<%=request.getContextPath() %>/login.action" title="Home"><span>Home</span></a></li>
		<li id="productTab"><a href="<%=request.getContextPath() %>/product/loadProducts.action" title="Product"><span>Products</span></a></li>
		<li id="movementTab"><a href="<%=request.getContextPath() %>/movement/init.action" title="Movement"><span>Movements</span></a></li>
		<li id="userTab"><a href="<%=request.getContextPath() %>/movement/init.action" title="Users"><span>Users</span></a></li>
		<li id="productTab2"><a href="<%=request.getContextPath() %>/product/loadProducts.action" title="Products"><span>Products</span></a></li>
		<li id="movementTab2"><a href="<%=request.getContextPath() %>/movement/init.action" title="Movements"><span>Movements</span></a></li>
		<li style="position:relative;"><a href="#" title="Help"><span>Help</span></a><em></em></li>
	</ul>
	<div class="menu_nav_right">
	</div>
	</div>
	</div>
	<!--nav,end-->


</body>
</html>





