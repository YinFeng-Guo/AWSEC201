<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.0.js" ></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jQuery/DatePicker/jquery-ui-1.8.23.custom.min.js" ></script>		
<link href="<%=request.getContextPath()%>/jQuery/DatePicker/ui-lightness/jquery-ui-1.8.23.custom.css" rel="stylesheet" type="text/css" />	
</head>
<body>
<div id="headerDiv">
	<jsp:include page="header.jsp" />
</div>
<%-- <a href="<%=request.getContextPath() %>/user/unspecial.action">System User</a> --%>
<div id="bodyDiv">
<p>Date: <input type="text" id="datepicker"></p>	
</div>
<div id="footerDiv">
	<jsp:include page="footer.jsp" />
</div>
</body>
<script>
	$(function() {
		$( "#datepicker" ).datepicker();
	});
</script>
</html>