<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Add products</title>
<link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet"
	type="text/css" media="screen" />
<script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script>
<script language="JavaScript">
	var intRowIndex = 0;
	function insertRow(tbIndex) {
		var strName="<input type=\"text\" name=\"product.name\" value=\"\">";
		var strBarcode="<input type=\"text\" name=\"product.barcode\" value=\"\">";
		var strPriceBuy="<input type=\"text\" name=\"product.price_buy\" value=\"\">";
		var strPriceSell="<input type=\"text\" name=\"product.price_sell\" value=\"\">";
		var strUnit="<input type=\"text\" name=\"product.unit\" value=\"\">";
		var strActive="<input type=\"text\" name=\"product.active\" value=\"\">";
		var objRow = myTable.insertRow(tbIndex);
		var objCel = objRow.insertCell(0);
		objCel.innerHTML = strName;
		var objCel = objRow.insertCell(1);
		objCel.innerHTML = strBarcode;
		var objCel = objRow.insertCell(2);
		objCel.innerHTML = strPriceBuy;
		var objCel = objRow.insertCell(3);
		objCel.innerHTML = strPriceSell;
		var objCel = objRow.insertCell(4);
		objCel.innerHTML = strUnit;
		var objCel = objRow.insertCell(5);
		objCel.innerHTML = strActive;
		objRow.style.background = "pink";
	}
	function deleteRow(tbIndex) {
		if(tbIndex>1) {
			myTable.deleteRow(tbIndex-1);
		}
		else alert('No more records to delete!!');
	}

</script>

</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>

	<div id="bodyDiv">
		<input type="button" onclick="deleteRow(myTable.rows.length)" value="Del Row"> 
		<input type="button" onclick="insertRow(myTable.rows.length);" value="Add Row">
		<form action="<%=request.getContextPath()%>/product/commitAdd.action" method="post">
			<table id="myTable">
				<tr>
					<th align="center">Name</th>
					<th align="center">Barcode</th>
					<th align="center">Price Buy</th>
					<th align="center">Price Sell</th>
					<th align="center">Unit</th>
					<th align="center">Active</th>
				</tr>
			</table>
			<input type="button" value="Submit"  onclick="form.submit()">
		</form>

	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
</html>