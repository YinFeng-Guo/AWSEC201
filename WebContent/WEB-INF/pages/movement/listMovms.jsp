<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags"  prefix="s"%>
			<table id = "prodsData">
			<tr>
				<th align="center" width="5px">Actions</th>
				<th align="center">Name</th>
				<th align="center">Product Name</th>
				<th align="center">Operate Date</th>
				<th align="center">Type</th>
				<th align="center">Amount</th>
			</tr>
			<s:iterator value="movements" var="list_movms">
				<tr>
					<td align="center"><a
						href="modifyMovms.action?movement.id=<s:property value='#list_movms.id'/>"><img
							src="/AWSEC201/images/edit.png" border="0" /></a></td>
					<td align="center"><s:property value="#list_movms.name" /></td>
					<td align="center"><a
						href="../product/loadProdById.action?product.id=<s:property value='#list_movms.product_Id'/>"><s:property value="#list_movms.prodName" /></a></td>
					<td align="center"><s:date name="#list_movms.oper_date" format="yyyy-MM-dd"/></td>
					<td align="center"><s:property value="#list_movms.type" /></td>
					<td align="center"><s:property value="#list_movms.amount" /></td>


				</tr>
			</s:iterator>
		</table>