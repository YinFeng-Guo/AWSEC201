<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form id="listProdForm"
	action="<%=request.getContextPath()%>/product/searchProducts.action"
	method="post">
	<spring:message code="productName"/>: <input type="text" name="product.name">&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="productBarcode"/>
	: <input type="text" name="product.barcode">&nbsp;&nbsp;&nbsp;&nbsp;<input
		type="button" value='<spring:message code="search"/>' onclick="onQuery();">
</form>
