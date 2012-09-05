<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Edit Products</title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>

</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv">
		<form action="<%=request.getContextPath()%>/product/commitModify.action" method="post">
			<table id="myTable">
				<tr>
					<th align="center">Name</th>
					<th align="center">Barcode</th>
					<th align="center">Price Buy</th>
					<th align="center">Price Sell</th>
					<th align="center">Unit</th>
					<th align="center">Active</th>
				</tr>
				<tr>
				<s:property value="product"/>
				<s:property value= '#product.barcode'/>
					<td ><input type="text" name="product.name" value="${product.name}"></td>
					<td ><input type="text" name="product.barcode" value="<s:property value='#product.barcode'/>"></td>
					<td ><input type="text" name="product.price_buy" value="<s:property value='#product.price_buy'/>"></td>
					<td ><input type="text" name="product.price_sell" value="<s:property value='#product.price_sell'/>"></td>
					<td ><input type="text" name="product.unit" value="<s:property value='#product.unit'/>"></td>
					<td ><input type="text" name="product.active" value="<s:property value='#product.active'/>"></td>
				</tr>
			</table>
			<input type="button" value="Submit"  onclick="form.submit()">
		</form>
		<s:debug></s:debug>
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
</html>