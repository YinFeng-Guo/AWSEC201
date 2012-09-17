<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<table id="prodsData" cellpadding="0" cellspacing="0" width="100%"
	class=" TF">
	<tr>
		<th align="center" width="5px"><spring:message code='action' /></th>
		<th align="center"><spring:message code='movementName' /></th>
		<th align="center"><spring:message code='productName' /></th>
		<th align="center"><spring:message code='operateDate' /></th>
		<th align="center"><spring:message code='type' /></th>
		<th align="center"><spring:message code='OUT' /></th>
	</tr>
	<s:iterator value="movements" var="list_movms">
		<tr>
			<td align="center"><a
				href="modifyMovms.action?movement.id=<s:property value='#list_movms.id'/>"><img
					src="/AWSEC201/images/edit.png" border="0" /></a></td>
			<td align="center"><s:property value="#list_movms.name" /></td>
			<td align="center"><a
				href="../product/loadProdById.action?product.id=<s:property value='#list_movms.product_Id'/>"><s:property
						value="#list_movms.prodName" /></a></td>
			<td align="center"><s:date name="#list_movms.oper_date"
					format="yyyy-MM-dd" /></td>
			<td align="center">
				<s:if test="#list_movms.type == 'IN'">
					<spring:message code="IN" />
				</s:if> <s:elseif test="#list_movms.type == 'OUT'">
					<spring:message code="OUT" />
				</s:elseif> <s:elseif test="#list_movms.type == 'FAILURE'">
					<spring:message code="FAILURE" />
				</s:elseif>
			</td>
			<td align="center"><s:property value="#list_movms.amount" /></td>

		</tr>
	</s:iterator>
</table>
<input type="button" value="<spring:message code='addMovement'/>"
	onclick="window.location.href='addMovms.action'">
