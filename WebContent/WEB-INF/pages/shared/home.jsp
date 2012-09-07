<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="header.jsp" />
	</div>
	<div id="bodyDiv"></div>
	<div id="footerDiv">
		<jsp:include page="footer.jsp" />
	</div>
</body>
<script>
document.getElementById("homeTab").className = "current";
document.getElementById("productTab").className = "";
document.getElementById("userTab").className = "";
document.getElementById("movementTab").className = "";
</script>

</html>

