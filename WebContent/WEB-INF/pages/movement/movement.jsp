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
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv">
	<form action="<%=request.getContextPath()%>/movement/searchMovms.action" method="post">
		 Date: <input type="text" id="datepicker" name="movement.oper_date">&nbsp;&nbsp;&nbsp;&nbsp;Movement Barcode: <input type="text" name="movement.barcode">&nbsp;&nbsp;&nbsp;&nbsp;<input type ="button" value ="Search" onclick="form.submit()">
	</form>		
		<table id = "prodsData">
			<tr>
				<th align="center" width="5px">Actions</th>
				<th align="center">Name</th>
				<th align="center">Barcode</th>
				<th align="center">Price Buy</th>
				<th align="center">Price Sell</th>
				<th align="center">Operate Date</th>
				<th align="center">Type</th>
				<th align="center">Amount</th>
			</tr>
			<s:iterator value="movements" var="list_movms">
				<tr>
					<td align="center"><a
						href="modifyMovms.action?movement.id=<s:property value='#list_movms.id'/>"><img
							src="/AWSEC201/images/edit.png" border="0" /></a>&nbsp;|&nbsp;<a
						href="deleteMovms.action?movement.id=<s:property value='#list_movms.id'/>"><img
							src="/AWSEC201/images/delete.png" border="0" /></a></td>
					<td align="center"><s:property value="#list_movms.name" /></td>
					<td align="center"><s:property value="#list_movms.barcode" /></td>
					<td align="center"><s:property value="#list_movms.price_buy" /></td>
					<td align="center"><s:property value="#list_movms.price_sell" /></td>
					<td align="center"><s:date name="#list_movms.oper_date" format="yyyy-MM-dd"/></td>
					<td align="center"><s:property value="#list_movms.type" /></td>
					<td align="center"><s:property value="#list_movms.amount" /></td>


				</tr>
			</s:iterator>
		</table>
		<input type="button" value="Add Movements" onclick="window.location.href='addMovms.action'">
		<s:debug></s:debug>
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	$(function() {
		$( "#datepicker" ).datepicker();
	});
	
	document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "";
	document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "current";
</script>
</html>