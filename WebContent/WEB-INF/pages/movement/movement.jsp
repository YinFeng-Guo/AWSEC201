<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movement Management</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.0.js" ></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
<script>
function onQuery(){
	defautFlag = true;
	startRequest('','listDiv','movementQueryForm');
}
function initMovementsPage(){
	focusUnspecialUnRefresh();
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
</body>
<script>
initMovementsPage();
</script>
</html>