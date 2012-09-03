<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome ITBconsult</title>
<link href="<%=request.getContextPath()%>/css/awsec2_login.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="contain">
		<div id="systemname"> Hello ITBconsult</div>
		<div id="applesqmlogin">	
			<div id="subbody">
				<div id="largeLogo">
					<table id="logoPic">
						<tr><td><img src="<%=request.getContextPath() %>/images/logo.png" /></td></tr>					
					</table>
				</div>
				<div id="loginForm">
					<form id="form" name="form" action="<%=request.getContextPath()%>/login.action" method="post">
					<table id="loginTable">					
						<tr>
							<td colspan="2" id="formTitle">Login</td>
						</tr>						
						<tr>
							<td><span class="email">User Name</span></td>
							<td><input class="emailtext" type="text"  name="user.email_id" value="haoho.song@gmail.com"/></td>
						</tr>						
						<tr>
							<td><span class="password">Password</span></td>
							<td><input class="passwordtext" type="password"  name="user.password" value="666666"/></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align:right;padding:20px 70px 0 0">
								<a href="#">
									<img src="<%=request.getContextPath() %>/images/btn_login.png" border="0"
									onclick="javascript:document.form.submit()"/></a>
							</td>
						</tr>						
					</table>
					</form>
				</div>
			</div>
			<div id="footwords">All rights reserved</div>		
		</div>
	</div>
</body>
</html>