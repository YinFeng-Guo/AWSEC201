<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Edit Products</title>
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
					<tr>
						<th align="center">ID</th>

						<td><input type="text" name="product.id"
							value="<s:property value="#p.id" />" readonly="readonly"></td>
					</tr>
					<tr>
						<th align="center">Name</th>
						<td><input type="text" name="product.name" class="validate[required]"
							value="<s:property value="#p.name" />"></td>
					</tr>
					<tr>
						<th align="center">Barcode</th>
						<td><input type="text" name="product.barcode" class="validate[required]"
							value="<s:property value="#p.barcode" />"></td>
					</tr>
					<tr>
						<th align="center">Price Buy</th>
						<td><input type="text" name="product.price_buy" class="validate[required,custom[number]]"
							value="<s:property value='#p.price_buy'/>"></td>
					</tr>
					<tr>
						<th align="center">Price Sell</th>
						<td><input type="text" name="product.price_sell" class="validate[required,custom[number]]"
							value="<s:property value='#p.price_sell'/>"></td>
					</tr>
					<tr>
						<th align="center">Unit</th>
						<td><s:select
								list="{'Inch','Meter','Liter','Kilogram','Pieces'}"
								name="product.unit" value="<s:property value='#p.unit'/>" /></td>
					</tr>
					<tr>
						<th align="center">Active</th>
						<td><s:select list="{'Active','Inactive'}"
								name="product.active" value="<s:property value='#p.active'/>" /></td>

					</tr>
				</s:iterator>
			</table>
			<input class="submit" type="submit" value="Submit" >
			<input onclick="history.go(-1)" type="button" value="Cancel">
		</form>
		<s:debug></s:debug>
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
document.getElementById("productTab2").className = "currentSelect";
</script>
</html>