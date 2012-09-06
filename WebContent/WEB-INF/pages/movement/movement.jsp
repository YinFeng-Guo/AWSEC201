<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movement Management</title>
<%-- <link href="<%=request.getContextPath()%>/css/movement/awsec2.css" rel="stylesheet" type="text/css" /> --%>

<link href="<%=request.getContextPath()%>/css/movement/tablefilter.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/jQuery/TableFilter/filtergrid.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/jQuery/TableFilter/tablefilter_all_min.js" language="javascript" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/movement/tablefilter.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.0.js" ></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
<script>
function onQuery(){
	defautFlag = true;
	startRequest('','listDiv','movementQueryForm');
}
function initMovementsPage(){
	alert('okok');
	initPageDiv();
	onQuery();
}
function initPageDiv(){
	$('#operateDiv').hide();
	$('#queryDiv').show();
	$('#listDiv').show();
}
</script>

</head>
<body>
<div id="container">
	<jsp:include page="../shared/header.jsp"></jsp:include>
	<div id="pageContent" class="content">
		<div id="queryDiv">
			<div id="formTitle">Query Condition</div>
			<jsp:include page="query.jsp"></jsp:include>
		</div>
		<div id="operateDiv">
		</div>
		<div id="listDiv">
		</div>
	</div>
</div>

<hr/><a href="javascript:window.scroll(0,0);">Top of page</a> 

</body>
<script>
initMovementsPage();
</script>
</html>