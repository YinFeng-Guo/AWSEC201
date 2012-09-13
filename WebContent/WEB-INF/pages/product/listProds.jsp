
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
		<table id="prodsData" cellpadding="0" cellspacing="0" width="100%" class=" TF">
			<tr>
				<th width="5px" align="center">Actions</th>
				<th align="center">Name</th>
				<th align="center">Barcode</th>
				<th align="center">Price Buy</th>
				<th align="center">Price Sell</th>
				<th align="center">Unit</th>
				<th align="center">Active</th>

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
