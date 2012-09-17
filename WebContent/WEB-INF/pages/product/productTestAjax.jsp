<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><spring:message code="title.showAllProducts"/></title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv">
		<form
			action="<%=request.getContextPath()%>/product/searchProducts.action"
			method="post">
			Product Name: <input type="text" name="product.name">&nbsp;&nbsp;&nbsp;&nbsp;Product
			Barcode: <input type="text" name="product.barcode">&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="button" value="Search" onclick="form.submit()">
		</form>
		<table id="prodsData">
			<tr>
				<th width="5px" align="center"><spring:message code='id' /></th>
				<th align="center"><spring:message code='productName' /></th>
				<th align="center"><spring:message code='barcode' /></th>
				<th align="center"><spring:message code='priceBuy' /></th>
				<th align="center"><spring:message code='priceSell' /></th>
				<th align="center"><spring:message code='unit' /></th>
				<th align="center"><spring:message code='active' /></th>

			</tr>
			<s:iterator value="product" var="list_prods">
				<tr>
					<td align="center"><a
						href="modifyProducts.action?product.id=<s:property value='#list_prods.id'/>"><img
							src="/AWSEC201/images/edit.png" border="0" /></a></td>
					<td align="center"><s:property value="#list_prods.name" /></td>
					<td align="center"><s:property value="#list_prods.barcode" /></td>
					<td align="center"><s:property value="#list_prods.price_buy" /></td>
					<td align="center"><s:property value="#list_prods.price_sell" /></td>
					<td align="center"><s:property value="#list_prods.unit" /></td>
					<td align="center"><s:property value="#list_prods.active" /></td>
				</tr>
			</s:iterator>
			<s:iterator value="products" var="list_prods">
				<tr>
					<td align="center"><a
						href="modifyProducts.action?product.id=<s:property value='#list_prods.id'/>"><img
							src="/AWSEC201/images/edit.png" border="0" /></a></td>
					<td align="center"><s:property value="#list_prods.name" /></td>
					<td align="center"><s:property value="#list_prods.barcode" /></td>
					<td align="center"><s:property value="#list_prods.price_buy" /></td>
					<td align="center"><s:property value="#list_prods.price_sell" /></td>
					<td align="center"><s:property value="#list_prods.unit" /></td>
					<td align="center"><s:property value="#list_prods.active" /></td>
				</tr>
			</s:iterator>
		</table>
		<input type="button" value="addProd"
			onclick="window.location.href='addProducts.action'">

	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	//document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "current";
	//document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "";

	
</script>
</html>