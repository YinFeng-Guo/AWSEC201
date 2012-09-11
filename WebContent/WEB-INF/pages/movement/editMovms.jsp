<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Edit Products</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jQuery/DatePicker/jquery-ui-1.8.23.custom.min.js"></script>
<link
	href="<%=request.getContextPath()%>/jQuery/DatePicker/ui-lightness/jquery-ui-1.8.23.custom.css"
	rel="stylesheet" type="text/css" />
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/validateInput.js"></script>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
			"yyyy-MM-dd");

	java.util.Date date = new java.util.Date();//得到当前系统时间 
	String str_date1 = formatter.format(date);
%>
<style type="text/css">
th {
	width: 90px;
}
</style>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv" align="center">
		<form
			action="<%=request.getContextPath()%>/movement/commitModify.action"
			method="post">
			<table id="myTable" style="width:400px;">
				<s:iterator value="movement" var="m">
					<tr>
						<th align="center">ID</th>
						<td><input type="text" name="movement.id"
							value="<s:property value="#m.id" />" readonly="readonly"></td>
					</tr>
					<tr>
						<th align="center">Name</th>
						<td><input type="text" name="movement.name"
							value="<s:property value="#m.name"/>"></td>
					</tr>
					<tr>
						<th align="center">Product Id</th>
						<td><s:select list="list_ProdIds" name="movement.product_Id"
								emptyOption="ture"></s:select></td>
					</tr>
					<tr>
						<th align="center">Business Unit Id</th>
						<td><s:select list="list_BUIds"
								name="movement.businessUnit_Id" emptyOption="ture"></s:select></td>
					</tr>
					<tr>
						<th align="center">Date</th>
						<td><input type="text" name="movement.oper_date"
							id="datepicker" value="<s:property value='#m.oper_date'/>"></td>
					</tr>
					<tr>
						<th align="center">Type</th>
						<td><s:select list="{'IN','OUT','FAILURE'}"
								name="movement.type" value="<s:property value='#m.type'/>" /></td>
					</tr>
					<tr>
						<th align="center">Amount</th>
						<td><input type="text" name="movement.amount"
							value="<s:property value='#m.amount'/>"></td>
					</tr>
				</s:iterator>
			</table>
			<input type="button" value="Submit" onclick="form.submit()">
			<input onclick="history.go(-1)" type="button" value="Cancel">
		</form>
		<s:debug></s:debug>
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	$(function() {
		dateFormat: 'yyyy/mm/dd';
		$("#datepicker").datepicker();
	});

	document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "";
	document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "current";
</script>
</html>