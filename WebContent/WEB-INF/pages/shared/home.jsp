<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	boolean isSuper = false;
	if(session.getAttribute("isSuper") != null && session.getAttribute("isSuper").toString().equals("true")){
		isSuper = true;
		response.sendRedirect(request.getContextPath()+"/product/loadProducts.action");
	}else{
	 	response.sendRedirect(request.getContextPath()+"/movement/loadMovms.action");
	}
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

