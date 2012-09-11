<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Add products</title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/validateInput.js"></script>
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
		<form action="<%=request.getContextPath()%>/product/commitAdd.action"
			method="post">
			<table id="myTable" style="width:400px;">
				<tr>
					<th align="center">Name</th>
					<td><input type="text" name="product.name" value=""></td>
				</tr>
				<tr>
					<th align="center">Barcode</th>
					<td><input type="text" name="product.barcode" value=""></td>
				</tr>
				<tr>
					<th align="center">Price Buy</th>
					<td><input type="text" name="product.price_buy" value=""></td>
				</tr>
				<tr>
					<th align="center">Price Sell</th>
					<td><input type="text" name="product.price_sell" value=""></td>
				</tr>
				<tr>
					<th align="center">Unit</th>
					<td><s:select
							list="{'Inch','Meter','Liter','Kilogram','Pieces'}"
							name="product.unit" value="" /></td>
				</tr>
				<tr>
					<th align="center">Active</th>
					<td><s:select list="{'Active','Inactive'}"
							name="product.active" value="" /></td>
				</tr>

			</table>
			<input type="button" value="Submit" onclick="form.submit()" />
			<input onclick="history.go(-1)" type="button" value="Cancel" />
		</form>
		<s:debug></s:debug>

	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "current";
	document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "";
</script>
</html>