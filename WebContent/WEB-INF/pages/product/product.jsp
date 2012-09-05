<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>
	
	<div id="bodyDiv">
		<table>
			<tr>
				<td align="center">Id</td>
				<td align="center">Name</td>
				<td align="center">Barcode</td>
				<td align="center">Price Buy</td>
				<td align="center">Price Sell</td>
				<td align="center">Unit</td>
				<td align="center">Active</td>
			</tr>	
			<s:iterator value="products" var="list_prods">
				<tr>
					<td align="center"><s:property value="#list_prods.id"/></td>
					<td align="center"><s:property value="#list_prods.name"/></td>
					<td align="center"><s:property value="#list_prods.barcode"/></td>
					<td align="center"><s:property value="#list_prods.price_buy"/></td>
					<td align="center"><s:property value="#list_prods.price_sell"/></td>
					<td align="center"><s:property value="#list_prods.unit"/></td>
					<td align="center"><s:property value="#list_prods.active"/><br></td>
				</tr>	
			</s:iterator>	
		</table>


	</div>
	
	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
</html>