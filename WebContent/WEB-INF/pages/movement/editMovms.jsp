<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Edit Products</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.0.js" ></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jQuery/DatePicker/jquery-ui-1.8.23.custom.min.js" ></script>		
<link href="<%=request.getContextPath()%>/jQuery/DatePicker/ui-lightness/jquery-ui-1.8.23.custom.css" rel="stylesheet" type="text/css" />
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>

</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv">
		<form action="<%=request.getContextPath()%>/movement/commitModify.action" method="post">
			<table id="myTable">
				<tr>
					<th align="center">ID</th>
					<th align="center">Name</th>
					<th align="center">Barcode</th>
					<th align="center">Price Buy</th>
					<th align="center">Price Sell</th>
					<th align="center">Date</th>
					<th align="center">Type</th>
					<th align="center">Amount</th>
				</tr>
				<tr>
					<s:iterator value="movement" var="m">
					<td><input type="text" name="movement.id" value="<s:property value="#m.id" />" readonly="readonly"></td>
					<td ><input type="text" name="movement.name" value="<s:property value="#m.name" />"></td>
					<td ><input type="text" name="movement.barcode" value="<s:property value="#m.barcode" />"></td>
					<td ><input type="text" name="movement.price_buy" value="<s:property value='#m.price_buy'/>"></td>
					<td ><input type="text" name="movement.price_sell" value="<s:property value='#m.price_sell'/>"></td>
					<td ><input type="text" name="movement.oper_date" id="datepicker" value="<s:property value='#m.oper_date'/>"></td>
					<td ><s:select list="{'IN','OUT','FAILURE'}" name="movement.type" value="<s:property value='#m.type'/>"/></td>
					<td ><input type="text" name="movement.amount" value="<s:property value='#m.amount'/>"></td>
					</s:iterator>
				</tr>
			</table>
			<input type="button" value="Submit"  onclick="form.submit()">
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
		$( "#datepicker" ).datepicker();
	});
	
	document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "";
	document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "current";
</script>
</html>