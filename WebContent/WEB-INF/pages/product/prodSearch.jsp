<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<form id="listProdForm"
	action="<%=request.getContextPath()%>/product/searchProducts.action"
	method="post">
	Product Name: <input type="text" name="product.name">&nbsp;&nbsp;&nbsp;&nbsp;Product
	Barcode: <input type="text" name="product.barcode">&nbsp;&nbsp;&nbsp;&nbsp;<input
		type="button" value="Search" onclick="onQuery();">
</form>
