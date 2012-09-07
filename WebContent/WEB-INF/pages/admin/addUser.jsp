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

<script type="text/javascript" src="/AWSEC201/js/jquery-1.8.0.js"></script>
<title>Add User</title>

<script type="text/javascript">
	
	function insertRow(tbIndex) {
		var strFirstName="<input type=\"text\" name=\"users["+ (tbIndex - 1) +"].firstname\"/>";
		var strLastName="<input type=\"text\" name=\"users["+ (tbIndex - 1) +"].lastname\"/>";
		var strUserName="<input type=\"text\" name=\"users["+ (tbIndex - 1) +"].username\"/>";
		var strSuper="<input type='checkbox' name='users[" + (tbIndex - 1) + "].supers' value='true' />";
		var strActive = "<input type='checkbox' name='users[" + (tbIndex - 1) + "].active' value='true' />";
		var strOrganizationId="<input type=\"text\" name=\"users["+ (tbIndex - 1) +"].organization_id\"/>";
		var objRow = addUserTable.insertRow(tbIndex);
		var objCel = objRow.insertCell(0);
		objCel.innerHTML = strFirstName;
		var objCel = objRow.insertCell(1);
		objCel.innerHTML = strLastName;
		var objCel = objRow.insertCell(2);
		objCel.innerHTML = strUserName;
		var objCel = objRow.insertCell(3);
		objCel.innerHTML = strSuper;
		var objCel = objRow.insertCell(4);
		objCel.innerHTML = strActive;
		var objCel = objRow.insertCell(5);
		objCel.innerHTML = strOrganizationId;
		objRow.style.background = "pink";
	}
	function deleteRow(tbIndex) {
		if(tbIndex>1) {
			addUserTable.deleteRow(tbIndex-1);
		}
		else alert('No more records to delete!!');
	}
</script>
</head>
<body>
<div id="headerDiv">
	<jsp:include page="../shared/header.jsp" />
</div>


<div id="bodyDiv">
	<form action="addUser.action" method="post" onSubmit="checkData()">
		<table id="addUserTable">
			<tr>
				<th align="center">Firstname</th>
				<th align="center">Lastname</th>
				<th align="center">Username</th>
				<th align="center">Super</th>
				<th align="center">Active</th>
				<th align="center">Organization Id</th>
			</tr>
		</table>
		<input type="button" onclick="deleteRow(addUserTable.rows.length)" value="Del Row"> 
		<input type="button" onclick="insertRow(addUserTable.rows.length)" value="Add Row"><br /><br />
		<input type="submit" value="Submit"/>
	</form>
</div>

<div id="footerDiv">
	<jsp:include page="../shared/footer.jsp" />
</div>
</body>
</html>