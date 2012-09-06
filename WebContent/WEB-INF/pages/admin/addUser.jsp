<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	function addRow(){
		$("#addUserTable").append('<tr>' +
			+ '<td><input type=\"text\" name=\"user.firstname\"/></td>' +
			+ '<td><input type=\"text\" name=\"user.lastname\"/></td>' +
			+ '<td><input type=\"text\" name=\"user.username\"/></td>' +
			+ '<td><input type=\"checkbox\" name=\"superss\"/></td>' +
			+ '<td><input type=\"checkbox\" name=\"actives\"/></td>' +
			+ '<td><input type=\"text\" name=\"user.organization_id\"/></td>' +
			+ '</tr>');
	}
	
	function delRow(){
		//$("#addUserTable").
		
		var len = $("#addUserTable tr").length;  
        if(len > 1)  
            addUserTable.deleteRow(len - 1);
	}
	
	function insertRow(tbIndex) {
		var strFirstName="<input type=\"text\" name=\"user.firstname\"/>";
		var strLastName="<input type=\"text\" name=\"user.lastname\"/>";
		var strUserName="<input type=\"text\" name=\"user.username\"/>";
		var strSuper="<input type=\"checkbox\" name=\"superss\"/>";
		var strActive="<input type=\"checkbox\" name=\"actives\"/>";
		var strOrganizationId="<input type=\"text\" name=\"user.organization_id\"/>";
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
	<form action="addUser.action" method="post">
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
		<input type="button" onclick="insertRow(addUserTable.rows.length);" value="Add Row"><br /><br />
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>