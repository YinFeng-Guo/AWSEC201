<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><spring:message code="title.editMovement" /></title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jQuery/DatePicker/jquery-ui-1.8.23.custom.min.js"></script>
<link
	href="<%=request.getContextPath()%>/jQuery/DatePicker/ui-lightness/jquery-ui-1.8.23.custom.css"
	rel="stylesheet" type="text/css" />
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<link rel="stylesheet"
	href="/AWSEC201/css/movement/validationEngine.jquery.css"
	type="text/css" />
<link rel="stylesheet" href="/AWSEC201/css/movement/template.css"
	type="text/css" />
<script type="text/javascript"
	src="/AWSEC201/js/product/jquery.validationEngine-en.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"
	src="/AWSEC201/js/product/jquery.validationEngine.js"
	type="text/javascript" charset="utf-8"></script>
<script>
	jQuery(document).ready(function() {
		// binds form submission and fields to the validation engine
		jQuery("#formID").validationEngine();
	});

	/**
	 *
	 * @param {jqObject} the field where the validation applies
	 * @param {Array[String]} validation rules for this field
	 * @param {int} rule index
	 * @param {Map} form options
	 * @return an error string if validation failed
	 */
	function checkHELLO(field, rules, i, options) {
		if (field.val() != "HELLO") {
			// this allows to use i18 for the error msgs
			return options.allrules.validate2fields.alertText;
		}
	}
</script>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
			"yyyy-MM-dd");

	java.util.Date date = new java.util.Date();//得到当前系统时间 
	String str_date1 = formatter.format(date);
%>
<style type="text/css">
th {
	width: 90px;
}
</style>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv" align="center">
		<form id="formID"
			action="<%=request.getContextPath()%>/movement/commitModify.action"
			method="post">
			<table id="myTable" style="width: 400px;">
				<s:iterator value="movement" var="m">
					<tr>
						<th align="center"><spring:message code='id' /></th>
						<td><input type="text" name="movement.id"
							value="<s:property value="#m.id" />" readonly="readonly"></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='movementName' /></th>
						<td><input type="text" name="movement.name"
							class="validate[required]" value="<s:property value="#m.name"/>"></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='productId4Mov' /></th>
						<td><s:select list="list_ProdIds" name="movement.product_Id"
								emptyOption="ture"></s:select></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='businessId' /></th>
						<td><s:select list="list_BUIds"
								name="movement.businessUnit_Id" emptyOption="ture"></s:select></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='date' /></th>

						<td><input type="text" name="movement.oper_date" class="validate[custom[date],required]"
							id="datepicker" value="<s:date name='#m.oper_date' format="yyyy-MM-dd"/>"></td>


					</tr>
					<tr>
						<th align="center"><spring:message code='type' /></th>
						<td><select name="movement.type">
								<s:if test="movement.type == 'IN'">
									<option value="IN" selected="selected">
										<spring:message code="IN" />
									</option>
									<option value="OUT">
										<spring:message code="OUT" />
									</option>
									<option value="FAILURE">
										<spring:message code="FAILURE" />
									</option>
								</s:if>
								<s:elseif test="movement.type == 'OUT'">
									<option value="IN">
										<spring:message code="IN" />
									</option>
									<option value="OUT" selected="selected">
										<spring:message code="OUT" />
									</option>
									<option value="FAILURE">
										<spring:message code="FAILURE" />
									</option>
								</s:elseif>
								<s:elseif test="movement.type == 'FAILURE'">
									<option value="IN">
										<spring:message code="IN" />
									</option>
									<option value="OUT">
										<spring:message code="OUT" />
									</option>
									<option value="FAILURE" selected="selected">
										<spring:message code="FAILURE" />
									</option>
								</s:elseif>
						</select> <%-- 				<s:select list="{'IN','OUT','FAILURE'}"
								name="movement.type" value="<s:property value='#m.type'/>" />
								--%></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='amount' /></th>
						<td><input type="text" name="movement.amount"
							class="validate[required,custom[integer]]"
							value="<s:property value='#m.amount'/>"></td>
					</tr>
				</s:iterator>
			</table>
			<input class="submit" type="submit"
				value="<spring:message code='submit' />"> <input
				onclick="history.go(-1)" type="button"
				value="<spring:message code='cancel' />">
		</form>
		<s:debug></s:debug>
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	$(function() {
		$("#datepicker").datepicker({dateFormat: 'yy-mm-dd'});
	});

	document.getElementById("movementTab2").className = "currentSelect";
</script>
</html>
