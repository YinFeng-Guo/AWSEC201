<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit One User</title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>

<script type="text/javascript" src="/AWSEC201/js/jquery-1.8.0.js"></script>

<style type="text/css">
	th{
		width:90px;
	}
</style>

</head>
<body>
<div id="headerDiv">
	<jsp:include page="../shared/header.jsp" />
</div>
<div id="updateOneUserDiv">
<form action="updateOneUser.action" id="updateOneUserForm">
	<table id="editOneUserTable" style="width:500px;">
	<s:iterator value="users" var="user">
		<tr>
			<th><spring:message code="id"/></th>
			<td>
				<input type="hidden" name="user.id" value="<s:property value="#user.id"/>"/>
				<s:property value="#user.id"/>
			</td>
		</tr>
		<tr>
			<th><spring:message code="firstname" /></th>
			<td><input type="text" name="user.firstname" value="<s:property value="#user.firstname"/>"/></td>
		</tr>
		<tr>
			<th><spring:message code="lastname" /></th>
			<td><input type="text" name="user.lastname" value="<s:property value="#user.lastname"/>"/></td>
		</tr>
		<tr>
			<th><spring:message code="username" /></th>
			<td><input type="text" name="user.username" value="<s:property value="#user.username"/>"/></td>
		</tr>
		<tr>
			<th><spring:message code="password" /></th>
			<td><input type="text" name="user.password" value="<s:property value="#user.password"/>"/></td>
		</tr>
		<tr>
			<th><spring:message code="super" /></th>
			<td>
				<s:if test="#user.supers == true">
					<input type="checkbox" name="user.supers" checked="checked" value="true"/>
				</s:if>
				<s:else>
					<input type="checkbox" name="user.supers" value="true"/>
				</s:else>
			</td>
		</tr>
		<tr>
			<th><spring:message code="active" /></th>
			<td>
				<s:if test="#user.active == true">
					<input type="checkbox" name="user.active" checked="checked" value="true"/>
				</s:if>
				<s:else>
					<input type="checkbox" name="user.active" value="true"/>
				</s:else>
			</td>
		</tr>
		<tr>
			<th><spring:message code="organization" /></th>
			<td>
				<select name="user.organization_id" >
					<s:iterator value="organizations" var="orgs">
						<s:if test="#orgs.id == #user.organization_id">
							<option value="<s:property value="#orgs.id"/>" selected="selected"><s:property value="#orgs.name" /></option>
						</s:if>
						<s:else>
							<option value="<s:property value="#orgs.id"/>"><s:property value="#orgs.name" /></option>
						</s:else>
					</s:iterator>
				</select>
			</td>
		</tr>
	</s:iterator>
	</table>
	<input type="submit" value="<spring:message code='update'/>"/>
</form>
</div>
<div id="footerDiv">
	<jsp:include page="../shared/footer.jsp" />
</div>
</body>
<%-- <script>
document.getElementById("homeTab").className = "";
document.getElementById("productTab").className = "";
document.getElementById("userTab").className = "current";
document.getElementById("movementTab").className = "";
</script> --%>
</html>