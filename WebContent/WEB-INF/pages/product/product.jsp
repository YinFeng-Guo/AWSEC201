<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Show all products</title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<script type="text/javascript" src="/AWSEC201/js/ajax.js"></script>
<script type="text/javascript" src="/AWSEC201/js/jquery-1.8.0.js"></script>
<script>
	function onQuery() {
		startRequest('', 'bodyDiv', 'listProdForm');
	}
</script>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>
	<jsp:include page="prodSearch.jsp"></jsp:include>
	<div id="bodyDiv">
		<jsp:include page="listProds.jsp"></jsp:include>
		<input type="button" value="AddProd"
			onclick="window.location.href='addProducts.action'">
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	//document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "current";
	//document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "";
</script>
</html>