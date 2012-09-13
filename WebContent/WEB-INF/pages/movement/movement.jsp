<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Show all Movements</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.0.js" ></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jQuery/DatePicker/jquery-ui-1.8.23.custom.min.js" ></script>		
<link href="<%=request.getContextPath()%>/jQuery/DatePicker/ui-lightness/jquery-ui-1.8.23.custom.css" rel="stylesheet" type="text/css" />
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<script type="text/javascript" src="/AWSEC201/js/ajax.js"></script>
<script>
	function onQuery() {
		startRequest('', 'bodyDiv', 'listMovmsForm');
	}
</script>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>
	<jsp:include page="movmSearch.jsp"></jsp:include>
	<div id="bodyDiv">
	<jsp:include page="listMovms.jsp"></jsp:include>

		<input type="button" value="Add Movements" onclick="window.location.href='addMovms.action'">
		<s:debug></s:debug>
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	$(function() {
		$( "#datepicker" ).datepicker({dateFormat: 'yy-mm-dd'});
	});
	
// 	document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "";
// 	document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "current";
</script>
</html>