<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jQuery/DatePicker/jquery-ui-1.8.23.custom.min.js"></script>
<link
	href="<%=request.getContextPath()%>/jQuery/DatePicker/ui-lightness/jquery-ui-1.8.23.custom.css"
	rel="stylesheet" type="text/css" />
	
<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/button/css/demo.css" /> --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/button/css/style2.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>	
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="header.jsp" />
	</div>
	<div id="bodyDiv">
		<div style="text-align:left;">
			<p>
				Choose Date: <input type="text" id="datepicker">
			</p>
		</div>
		<div style="text-align:left;">
			<dl id="box">
				<dt>
					Search In System<input onblur="disbox()" type="text" name="" id="in" />
				</dt>
				<dd id="suggest">
					<a href="###">Search&nbsp;&nbsp;"<span></span>"&nbsp;&nbsp;related Product</a> <br/>
					<a href="###">Search&nbsp;&nbsp;"<span></span>"&nbsp;&nbsp;related Movement</a> <br/>
					<a href="###">Search&nbsp;&nbsp;"<span></span>"&nbsp;&nbsp;related User</a>
				</dd>
			</dl>
		</div>
		<div id="container_buttons">
             <p>
                 <a href="#" class="a_demo_two">
                     Click me!
                 </a>
             </p>
             <br/>
             <p>
                 <a href="#" class="a_demo_two">
                     Come on, don't be afraid
                 </a>
             </p>
             <br/>
             <p>
                 <a href="#" class="a_demo_two">
                     You can make this as wide as you want ;)
                 </a>
             </p>
         </div>
	</div>
	<div id="footerDiv">
		<jsp:include page="footer.jsp" />
	</div>
</body>
<script>
	document.getElementById("homeTab").className = "current";
	document.getElementById("productTab").className = "";
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

<!-- JS实现新浪微博搜索框提示的特效代码 -->
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

body {
	font-size: 14px;
}

#box {
	width: 600px;
	margin: 40px auto;
}

#in {
	width: 240px;
	height: 24px;
	line-height: 24px;
	border: 1px solid #369;
	border-radius: 4px;
	box-shadow: inset 0 0 2px #999;
}

#suggest {
	display: none;
	position: relative;
	margin-top: -1px;
	width: 240px;
	padding-top: 1px;
	border: 1px solid #369;
	border-top: 0 none;
	border-radius: 4px;
	box-shadow: inset 0 0 2px #999;
	overflow: hidden;
}

#suggest a {
	display: block;
	color: #f00;
	height: 24px;
	line-height: 24px;
	text-decoration: none;
	padding: 0 4px;
}

#suggest a:hover {
	background: #eee;
}

#suggest a span {color #369;
	
}
</style>
<script type="text/javascript">
	window.onload = function() {
		//声明一坨变量供下面使用
		var obox = document.getElementById("box");
		obj = document.getElementById("in");
		osug = document.getElementById("suggest");
		oa = osug.getElementsByTagName("span");
		//兼容ie和火狐浏览器的方式，但是经测试发现ie678可以ie9却不行在删除的时候无法触发，网上查下说有ie9这个问题
		obj.oninput = obj.onpropertychange = onchange;
		function onchange() {
			var txt = this.value;
			var words = txt.length;
			if (words == 0) {
				osug.style.display = "none";
			} else if (words <= 8) {
				osug.style.display = "block";
				for ( var i = 0; len = oa.length, i < len; i++) {
					oa[i].innerHTML = txt;
				}
			} else if (words > 8) {
				osug.style.display = "block";
				var limit = txt.substring(0, 8) + "...";
				for ( var i = 0; len = oa.length, i < len; i++) {
					oa[i].innerHTML = limit;
				}
			}
		}

	}
	function disbox() {
		document.getElementById("suggest").style.display = "none";
	}
</script>
<!-- JS实现新浪微博搜索框提示的特效代码 -->
</html>

