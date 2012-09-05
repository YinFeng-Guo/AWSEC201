<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv">
		<table>
			<tr>
				<th align="center">Id</th>
				<th align="center">Name</th>
				<th align="center">Barcode</th>
				<th align="center">Price Buy</th>
				<th align="center">Price Sell</th>
				<th align="center">Unit</th>
				<th align="center">Active</th>
			</tr>
			<s:iterator value="products" var="list_prods">
				<tr>
					<td align="center"><s:property value="#list_prods.id" /></td>
					<td align="center"><s:property value="#list_prods.name" /></td>
					<td align="center"><s:property value="#list_prods.barcode" /></td>
					<td align="center"><s:property value="#list_prods.price_buy" /></td>
					<td align="center"><s:property value="#list_prods.price_sell" /></td>
					<td align="center"><s:property value="#list_prods.unit" /></td>
					<td align="center"><s:property value="#list_prods.active" /></td>
					<td align="center"><a
						href="user!selectUserInfo?uid=<s:property value='#list_prods.id'/>">Details</a></td>
					<td align="center"><a
						href="user!selectUserInfo?uid=<s:property value='#list_prods.id'/>"><img
							src="images/edit.gif" border="0" /></a></td>
					<td align="center"><a
						href="user!deleteUserInfo?uid=<s:property value='#list_prods.id'/>"><img
							src="images/delete.gif" border="0" /></a></td>
				</tr>
			</s:iterator>
		</table>


	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
</html>