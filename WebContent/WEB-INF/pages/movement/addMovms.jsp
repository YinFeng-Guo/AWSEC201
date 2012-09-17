<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Add products</title>
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
<style type="text/css">
th {
	width: 90px;
}
</style>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
			"yyyy-MM-dd");

	java.util.Date date = new java.util.Date();//得到当前系统时间 
	String str_date1 = formatter.format(date);
%>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv" align="center">
		<form id="formID"
			action="<%=request.getContextPath()%>/movement/commitAdd.action"
			class="fValidator-form" method="post">
			<table id="myTable" style="width: 400px;">
				<tr>
					<th align="center"><spring:message code='movementName'/></th>
					<td><input type="text" name="movement.name"
						class="validate[required]" value="" name="req" id="req"></td>
				</tr>
				<tr>
					<th align="center"><spring:message code='productId4Mov'/></th>
					<td><s:select list="list_ProdIds" name="movement.product_Id"
							value="" /></td>
				</tr>
				<tr>
					<th align="center"><spring:message code='businessId'/></th>
					<td><s:select list="list_BUIds"
							name="movement.businessUnit_Id" value="" /></td>
				</tr>
				<tr>
					<th align="center"><spring:message code='operateDate'/></th>
					<td><input type="text" name="movement.oper_date"
						class="validate[custom[date],required]" id="datepicker"
						value="<%=str_date1%>"></td>
				</tr>
				<tr>
					<th align="center"><spring:message code='type'/></th>
					<td><s:select list="{'IN','OUT','FAILURE'}"
							name="movement.type" value="" /></td>
				</tr>
				<tr>
					<th align="center"><spring:message code='amount'/></th>
					<td><input type="text" name="movement.amount"
						class="validate[required,custom[integer]]" value=""></td>
				</tr>
			</table>
			<input class="submit" type="submit" value="<spring:message code='submit'/>" >
			 <input onclick="history.go(-1)" type="button" value="<spring:message code='cancel'/>">
		</form>


	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	$(function() {
		$("#datepicker").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
	document.getElementById("movementTab2").className = "currentSelect";
</script>
</html>