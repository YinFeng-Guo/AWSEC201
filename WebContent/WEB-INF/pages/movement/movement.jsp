<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><spring:message code="title.showAllMovements"/></title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jQuery/DatePicker/jquery-ui-1.8.23.custom.min.js"></script>
<link
	href="<%=request.getContextPath()%>/jQuery/DatePicker/ui-lightness/jquery-ui-1.8.23.custom.css"
	rel="stylesheet" type="text/css" />
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<script type="text/javascript" src="/AWSEC201/js/ajax.js"></script>
<link rel="stylesheet"
	href="/AWSEC201/css/movement/validationEngine.jquery.css"
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
		jQuery("#listMovmsForm").validationEngine();
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
<script>
	function onQuery() {
		startRequest('', 'dataDive', 'listMovmsForm');
	}
</script>
</head>
<body onload="onQuery();">
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv">
		<jsp:include page="movmSearch.jsp"></jsp:include>
		<div id="dataDive">
			<jsp:include page="listMovms.jsp"></jsp:include>
		</div>

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
