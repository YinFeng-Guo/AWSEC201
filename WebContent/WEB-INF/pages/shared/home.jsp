<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	response.sendRedirect(request.getContextPath()+"/product/loadProducts.action");
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>

	<div id="headerDiv">
		<jsp:include page="header.jsp" />
	</div>
	<div id="bodyDiv">
	
	</div>
	<div id="footerDiv">
		<jsp:include page="footer.jsp" />
	</div>
</body>

</html>

