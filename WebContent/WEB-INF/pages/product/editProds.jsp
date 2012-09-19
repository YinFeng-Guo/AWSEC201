<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><spring:message code="title.editProduct"/></title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
	<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.0.js"></script>
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
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv" align="center">
		<form id="formID"
			action="<%=request.getContextPath()%>/product/commitModify.action"
			method="post">
			<table id="myTable" style="width:400px;">
				<s:iterator value="product" var="p">
					
						<!-- <th align="center"><spring:message code='id' /></th> -->

						<input type="hidden" name="product.id"
							value="<s:property value="#p.id" />" readonly="readonly">
					
					<tr>
						<th align="center"><spring:message code='productName' /></th>
						<td><input type="text" name="product.name" class="validate[required]"
							value="<s:property value="#p.name" />"></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='barcode' /></th>
						<td><input type="text" name="product.barcode" class="validate[required]"
							value="<s:property value="#p.barcode" />"></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='priceBuy' /></th>
						<td><input type="text" name="product.price_buy" class="validate[required,custom[number]]"
							value="<s:property value='#p.price_buy'/>"></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='priceSell' /></th>
						<td><input type="text" name="product.price_sell" class="validate[required,custom[number]]"
							value="<s:property value='#p.price_sell'/>"></td>
					</tr>
					<tr>
						<th align="center"><spring:message code='unit' /></th>
						<td>
							<select name="product.unit" >
								<s:if test="product.unit == 'Inch'">
									<option value="Inch" selected="selected"><spring:message code="Inch"/></option>
									<option value="Meter" ><spring:message code="Meter"/></option>
									<option value="Liter" ><spring:message code="Liter"/></option>
									<option value="Kilogram" ><spring:message code="Kilogram"/></option>
									<option value="Pieces" ><spring:message code="Pieces"/></option>
								</s:if>
								<s:elseif test="product.unit == 'Meter'">
									<option value="Inch" ><spring:message code="Inch"/></option>
									<option value="Meter" selected="selected"><spring:message code="Meter"/></option>
									<option value="Liter" ><spring:message code="Liter"/></option>
									<option value="Kilogram" ><spring:message code="Kilogram"/></option>
									<option value="Pieces" ><spring:message code="Pieces"/></option>
								</s:elseif>
								<s:elseif test="product.unit == 'Liter'">
									<option value="Inch" ><spring:message code="Inch"/></option>
									<option value="Meter" ><spring:message code="Meter"/></option>
									<option value="Liter" selected="selected"><spring:message code="Liter"/></option>
									<option value="Kilogram" ><spring:message code="Kilogram"/></option>
									<option value="Pieces" ><spring:message code="Pieces"/></option>
								</s:elseif>
								<s:elseif test="product.unit == 'Kilogram'">
									<option value="Inch" ><spring:message code="Inch"/></option>
									<option value="Meter" ><spring:message code="Meter"/></option>
									<option value="Liter" ><spring:message code="Liter"/></option>
									<option value="Kilogram" selected="selected"><spring:message code="Kilogram"/></option>
									<option value="Pieces" ><spring:message code="Pieces"/></option>
								</s:elseif>
								<s:elseif test="product.unit == 'Pieces'">
									<option value="Inch"><spring:message code="Inch"/></option>
									<option value="Meter" ><spring:message code="Meter"/></option>
									<option value="Liter" ><spring:message code="Liter"/></option>
									<option value="Kilogram" ><spring:message code="Kilogram"/></option>
									<option value="Pieces" selected="selected"><spring:message code="Pieces"/></option>
								</s:elseif>
								
							</select>
						
<%-- 						<s:select
								list="{'Inch','Meter','Liter','Kilogram','Pieces'}"
								name="product.unit" value="<s:property value='#p.unit'/>" /> --%>
						</td>
					</tr>
					<tr>
						<th align="center"><spring:message code='active' /></th>
						<td>
							
							
						<select name="product.active">
							<s:if test="product.active == 'Active'">
								<option value="Active" selected="selected"><spring:message code="itemActive"/></option>
								<option value="Inactive" ><spring:message code="itemInactive"/></option>
							</s:if>
							<s:else>
								<option value="Active" ><spring:message code="itemActive"/></option>
								<option value="Inactive" selected="selected"><spring:message code="itemInactive"/></option>
							</s:else>
						</select>
					<%-- 	<s:select list="{'Active','Inactive'}"
								name="product.active" value="<s:property value='#p.active'/>" /> --%>
						</td>
					</tr>
				</s:iterator>
			</table>
			<input class="submit" type="submit" value="<spring:message code='submit' />" >
			<input onclick="history.go(-1)" type="button" value="<spring:message code='cancel' />">
		</form>
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
document.getElementById("productTab2").className = "currentSelect";
</script>
</html>