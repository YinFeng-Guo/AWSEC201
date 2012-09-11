<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Add products</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jQuery/DatePicker/jquery-ui-1.8.23.custom.min.js"></script>
<link
	href="<%=request.getContextPath()%>/jQuery/DatePicker/ui-lightness/jquery-ui-1.8.23.custom.css"
	rel="stylesheet" type="text/css" />
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/validateInput.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/mootools.v1.1.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/shCore.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/shBrushXml.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/shBrushJScript.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/shBrushCss.js"></script>
<script type="text/javascript" src="/AWSEC201/js/product/fValidator-full.js"></script>
<script type="text/javascript">
    window.addEvent('domready', function(){
         var exValidatorA = new fValidator("exA");
    });
</script>
<style type="text/css">
th {
	width: 90px;
}

</style>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
			"yyyy-MM-dd");

	java.util.Date date = new java.util.Date();//得到当前系统时间 
	String str_date1 = formatter.format(date);


%>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv" align="center">
		<form id="exA" action="<%=request.getContextPath()%>/movement/commitAdd.action" class="fValidator-form"
			method="post">
			<table id="myTable" style="width:400px;">
				<tr>
					<th align="center">Name</th>
					<td><input type="text" name="movement.name" class="fValidate['required']" value=""></td>
				</tr>
				<tr>
					<th align="center">Product Id</th>
					<td><s:select list="list_ProdIds" name="movement.product_Id"
							value="" /></td>
				</tr>
				<tr>
					<th align="center">Business Unit Id</th>
					<td><s:select list="list_BUIds"
							name="movement.businessUnit_Id" value="" /></td>
				</tr>
				<tr>
					<th align="center">Operate Date</th>
					<td><input type="text" name="movement.oper_date"
						id="datepicker" value="<%=str_date1%>"></td>
				</tr>
				<tr>
					<th align="center">Type</th>
					<td><s:select list="{'IN','OUT','FAILURE'}"
							name="movement.type" value="" /></td>
				</tr>
				<tr>
					<th align="center">Amount</th>
					<td><input type="text" name="movement.amount" class="fValidate['integer']" value=""></td>
				</tr>
			</table>
			<input id="exA_submit" type="button" value="Submit" onclick="form.submit()">
			<input onclick="history.go(-1)" type="button" value="Cancel">
		</form>
		<s:debug></s:debug>

	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
jQuery(function($){  
	 $.datepicker.regional['zh-CN'] = {
			 dateFormat: 'yy/mm/dd'
	 };
	 $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
	}

	$(function() {
		dateFormat: 'yyyy/mm/dd';
		$("#datepicker").datepicker();
	});

	document.getElementById("homeTab").className = "";
	document.getElementById("productTab").className = "";
	document.getElementById("userTab").className = "";
	document.getElementById("movementTab").className = "current";
</script>
</html>