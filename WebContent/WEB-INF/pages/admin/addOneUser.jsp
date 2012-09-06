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

<script type="text/javascript">
	function submitForm(){
		if(document.getElementById("superss").checked){
			document.getElementById("superstxt").value = true;
		}else{
			document.getElementById("superstxt").value = false;
		}
		
		if(document.getElementById("actives").checked){
			document.getElementById("activetxt").value = true;
		}else{
			document.getElementById("activetxt").value = false;
		}
		document.getElementById("addOneUserForm").submit();
	}
</script>
</head>
<body>

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
			<td><input type="text" name="user.username" /></td>
		</tr>
		<tr>
			<th>Super</th>
			<td>
				<input type="checkbox" name="superss" id="superss"/>
				<input type="hidden" name="user.supers" value="false" id="superstxt"/>
			</td>
		</tr>
		<tr>
			<th>Active</th>
			<td>
				<input type="checkbox" name="actives" id="actives"/>
				<input type="hidden" name="user.active" id="activetxt" value="false"/>
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
	<br>
	<input type="button" value="Add User" onClick="submitForm()" />
	<input type="submit" value="Submit">
</form>
</body>
</html>