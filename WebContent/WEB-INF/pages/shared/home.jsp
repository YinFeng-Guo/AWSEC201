<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
// 	response.sendRedirect(request.getContextPath()+"/product/loadProducts.action");
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

<link rel="alternate stylesheet" 	href="<%=request.getContextPath() %>/css/theme01/common.css" type="text/css" title="red" media="screen, projection"/> 
<link rel="stylesheet" 				href="<%=request.getContextPath() %>/css/theme02/common.css" type="text/css" title="green" media="screen, projection"/> 
<link rel="alternate stylesheet" 	href="<%=request.getContextPath() %>/css/theme03/common.css" type="text/css" title="yellow" media="screen, projection"/>

</head>
<body>

	<div id="headerDiv">
		<jsp:include page="header.jsp" />
	</div>
	<div id="bodyDiv">
	<a href="javascript :void()" onclick="setActiveStyleSheet('red'); return false;" title="red style">red style</a> 
	<a href="javascript :void()" onclick="setActiveStyleSheet('green'); return false;" title="green style">green style</a> 
	<a href="javascript :void()" onclick="setActiveStyleSheet('yellow'); return false;" title="yellow style">yellow style</a> 
	<a href="javascript :void()" onclick="setActiveStyleSheet('none'); return false;" title="none style">none style</a> 
	</div>
	<div id="footerDiv">
		<jsp:include page="footer.jsp" />
	</div>
</body>

<script>
function setActiveStyleSheet(title) { 
	  var i, a, main; 
	  if (title) { 
	  for(i=0; (a = document.getElementsByTagName('link')[i]); i++) { 
	  if(a.getAttribute('rel').indexOf('style') != -1 && a.getAttribute('title')) { 
	  a.disabled = true; 
	  if(a.getAttribute('title') == title) a.disabled = false; 
	  } 
	  } 
	  } 
	  } 
	  function getActiveStyleSheet() { 
	  var i, a; 
	  for(i=0; (a = document.getElementsByTagName('link')[i]); i++) { 
	  if(a.getAttribute('rel').indexOf('style') != -1 && a.getAttribute('title') && !a.disabled) return a.getAttribute('title'); 
	  } 
	  return null; 
	}
</script>
</html>

