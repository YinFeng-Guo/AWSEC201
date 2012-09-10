<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Add products</title>
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
<script language="JavaScript">
	var intRowIndex = 0;
	function insertRow(tbIndex) {
		var strName = "<input type=\"text\" name=\"movements[" + (tbIndex - 1)
				+ "].name\" value=\"\">";
		var strBarcode = "<input type=\"text\" name=\"movements["
				+ (tbIndex - 1) + "].barcode\" value=\"\">";
		var strPriceBuy = "<input type=\"text\" name=\"movements["
				+ (tbIndex - 1) + "].price_buy\" value=\"\">";
		var strPriceSell = "<input type=\"text\" name=\"movements["
				+ (tbIndex - 1) + "].price_sell\" value=\"\">";
		var strDate = "<input type=\"text\" name=\"movements[" + (tbIndex - 1)
				+ "].oper_date\" id=\"datepicker\" value=\"\">";
		var strType = "<input type=\"text\" name=\"movements[" + (tbIndex - 1)
				+ "].oper_date\" id=\"datepicker\" value=\"\">";
		var strAmount = "<input type=\"text\" name=\"movements["
				+ (tbIndex - 1) + "].amount\" value=\"\">";
		var objRow = myTable.insertRow(tbIndex);
		var objCel = objRow.insertCell(0);
		objCel.innerHTML = strName;
		var objCel = objRow.insertCell(1);
		objCel.innerHTML = strBarcode;
		var objCel = objRow.insertCell(2);
		objCel.innerHTML = strPriceBuy;
		var objCel = objRow.insertCell(3);
		objCel.innerHTML = strPriceSell;
		var objCel = objRow.insertCell(4);
		objCel.innerHTML = strDate;
		var objCel = objRow.insertCell(5);
		objCel.innerHTML = strType;
		var objCel = objRow.insertCell(6);
		objCel.innerHTML = strAmount;
		objRow.style.background = "pink";
	}
	function deleteRow(tbIndex) {
		if (tbIndex > 1) {
			myTable.deleteRow(tbIndex - 1);
		} else
			alert('No more records to delete!!');
	}
</script>

</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv">
		<input type="button" onclick="deleteRow(myTable.rows.length)"
			value="Del Row"> <input type="button"
			onclick="insertRow(myTable.rows.length);" value="Add Row">
			<s:select list="#{list_ProdIds}" name="movement.type" value=""/>
		<form action="<%=request.getContextPath()%>/movement/commitAdd.action"
			method="post">
			<table id="myTable">
				<tr>
					<th align="center">Name</th>
					<th align="center">Barcode</th>
					<th align="center">Price Buy</th>
					<th align="center">Price Sell</th>
					<th align="center">Operate Date</th>
					<th align="center">Type</th>
					<th align="center">Amount</th>
				</tr>
								<tr>
					<td ><input type="text" name="movement.name" value=""></td>
					<td ><input type="text" name="movement.barcode" value=""></td>
					<td ><input type="text" name="movement.price_buy" value=""></td>
					<td ><input type="text" name="movement.price_sell" value=""></td>
					<td ><input type="text" name="movement.oper_date" id="datepicker" value=""></td>
					<td ><s:select list="{'IN','OUT','FAILURE'}" name="movement.type" value=""/></td>
					<td ><input type="text" name="movement.amount" value=""></td>
				</tr>
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
		$( "#datepicker" ).datepicker();
	});
	
	document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "";
	document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "current";
</script>
</html>