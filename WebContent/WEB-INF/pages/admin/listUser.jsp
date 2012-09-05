<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<title>Display User Info</title>
</head>
<body>

<div id="usertable">
	<table>
		<tr>
			<th align="center">Id</th>
			<th align="center">Firstname</th>
			<th align="center">Lastname</th>
			<th align="center">Username</th>
			<th align="center">Password</th>
			<th align="center">Super</th>
			<th align="center">Active</th>
			<th align="center">Organization Id</th>
		</tr>
		<s:iterator value="users" id="user">
			<tr>
				<td align="center">
					<input type="text" value="<s:property value="#user.id"/>"/>
				</td>
				<td align="center">
					<input type="text" value="<s:property value="#user.firstname"/>"/>
				</td>
				<td align="center">
					<s:property value="#user.lastname"/>
				</td>
				<td align="center">
					<s:property value="#user.username"/>
				</td>
				<td align="center">
					<s:property value="#user.password"/>
				</td>
				<td align="center">
					<input type="checkbox" checked="<s:property value="#user.supers"/>"/>
					<s:property value="#user.supers"/>
				</td>
				<td align="center">
					<s:property value="#user.active"/>
				</td>
				<td align="center">
					<s:property value="#user.organization_id"/>
				</td>
			</tr>
		</s:iterator>
	</table>
</div>

</body>
</html>