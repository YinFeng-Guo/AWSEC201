<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add One User</title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<script type="text/javascript" src="/AWSEC201/js/jquery-1.8.0.js"></script>
</head>
<body>
<div id="headerDiv">
	<jsp:include page="../shared/header.jsp" />
</div>

<div id="bodyDiv">
	<form id="addOneUserForm" action="addOneUser.action" method="post">
		<table id="addOneUserTable">
			<tr>
				<th>Firstname</th>
				<td><input type="text" name="user.firstname" /></td>
			</tr>
			<tr>
				<th>Lastname</th>
				<td><input type="text" name="user.lastname" /></td>
			</tr>
			<tr>
				<th>Username</th>
				<td><input type="text" name="user.username"/></td>
			</tr>
			<tr>
				<th>Super</th>
				<td>
					<input type="checkbox" name="user.supers" value="true"/>
				</td>
			</tr>
			<tr>
				<th>Active</th>
				<td>
					<input type="checkbox" name="user.active" id="actives" value="true"/>
				</td>
			</tr>
			<tr>
				<th>Organization</th>
				<td>
					<select name="user.organization_id">
						<s:iterator value="organizations" var="orgs">
							<option value="<s:property value="#orgs.id" />"><s:property value="#orgs.name" /></option>
						</s:iterator>
					</select>
				</td>
			</tr>
		</table>
		<input type="submit" value="Submit" />
	</form>
</div>

<div id="footerDiv">
	<jsp:include page="../shared/footer.jsp" />
</div>
</body>
</html>