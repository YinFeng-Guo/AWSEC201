<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>

<table id="prodsData" cellpadding="0" cellspacing="0" width="100%">
	<!-- <thead> -->
		<tr>

			<th width="3%" align="center"><spring:message code="action" /></th>
			<th width="10%" align="center"><spring:message
					code="productName" /></th>
			<th width="10%" align="center"><spring:message code="barcode" /></th>
			<th width="10%" align="center"><spring:message code="priceBuy" /></th>
			<th width="10%" align="center"><spring:message code="priceSell" /></th>
			<th width="10%" align="center"><spring:message code="unit" /></th>
			<th width="10%" align="center"><spring:message code="active" /></th>
		</tr>
	<!-- </thead> -->
	<!-- <tbody> -->
		<s:iterator value="product" var="list_prods">
			<tr>
				<td align="center"><a
					href="modifyProducts.action?product.id=<s:property value='#list_prods.id'/>"><img
						src="/AWSEC201/images/edit.png" border="0" /></a></td>
				<td align="center"><s:property value="#list_prods.name" /></td>
				<td align="center"><s:property value="#list_prods.barcode" /></td>
				<td align="center"><s:property value="#list_prods.price_buy" /></td>
				<td align="center"><s:property value="#list_prods.price_sell" /></td>
				<td align="center">
					<s:if test="#list_prods.unit == 'Inch'">
						<spring:message code="Inch" />
					</s:if> <s:elseif test="#list_prods.unit == 'Meter'">
						<spring:message code="Meter" />
					</s:elseif> <s:elseif test="#list_prods.unit == 'Liter'">
						<spring:message code="Liter" />
					</s:elseif> <s:elseif test="#list_prods.unit == 'Kilogram'">
						<spring:message code="Kilogram" />
					</s:elseif> <s:elseif test="#list_prods.unit == 'Pieces'">
						<spring:message code="Pieces" />
					</s:elseif>
					<%-- <s:property value="#list_prods.unit" /> --%>
				</td>
				<td align="center">
					<s:if test="#list_prods.active == 'Active'">
						<spring:message code="itemActive" />
					</s:if> <s:else>
						<spring:message code="itemInactive" />
					</s:else>
					<%-- <s:property value="#list_prods.active" /> --%>
				</td>
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
				<td align="center"><s:if test="#list_prods.unit == 'Inch'">
						<spring:message code="Inch" />
					</s:if> <s:elseif test="#list_prods.unit == 'Meter'">
						<spring:message code="Meter" />
					</s:elseif> <s:elseif test="#list_prods.unit == 'Liter'">
						<spring:message code="Liter" />
					</s:elseif> <s:elseif test="#list_prods.unit == 'Kilogram'">
						<spring:message code="Kilogram" />
					</s:elseif> <s:elseif test="#list_prods.unit == 'Pieces'">
						<spring:message code="Pieces" />
					</s:elseif> <%-- <s:property value="#list_prods.unit" /> --%></td>

				<td align="center"><s:if test="#list_prods.active == 'Active'">
						<spring:message code="itemActive" />
					</s:if> <s:else>
						<spring:message code="itemInactive" />
					</s:else> <%-- 	<s:property value="#list_prods.active" /> --%></td>
			</tr>
		</s:iterator>
	<!-- </tbody> -->
</table>
<input type="button" value="<spring:message code='addProduct'/>"
	onclick="window.location.href='addProducts.action'">
