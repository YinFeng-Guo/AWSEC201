<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
			"yyyy-MM-dd");

	java.util.Date date = new java.util.Date();//å¾å°å½åç³»ç»æ¶é´ 
	String str_date1 = formatter.format(date);


%>
	<form action="<%=request.getContextPath()%>/movement/searchMovms.action" method="post" id="listMovmsForm">
		 Date: <input type="text" id="datepicker" name="movement.oper_date" value="<%=str_date1%>">&nbsp;&nbsp;&nbsp;&nbsp;<input type ="button" value ="Search" onclick="onQuery();" >
	</form>	
	
	<script>
	$(function() {
		$( "#datepicker" ).datepicker({dateFormat: 'yy-mm-dd'});
	});
	</script>