<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Show all products</title>
<!-- <link href="/AWSEC201/css/product/tablecloth.css" rel="stylesheet" type="text/css" media="screen" /> -->
<%-- <script type="text/javascript" src="/AWSEC201/js/product/tablecloth.js"></script> --%>
<script type="text/javascript" src="/AWSEC201/js/ajax.js"></script>
<script type="text/javascript" src="/AWSEC201/js/jquery-1.8.0.js"></script>
<script>
	function onQuery() {
		startRequest('', 'dataDiv', 'listProdForm');
	}
</script>
</head>
<body>
	<div id="headerDiv">
		<jsp:include page="../shared/header.jsp" />
	</div>
	
	<div id="bodyDiv">
	<jsp:include page="prodSearch.jsp"></jsp:include>
	<div id="dataDiv">
	
		<jsp:include page="listProds.jsp"></jsp:include>
		<input type="button" value="AddProd"
			onclick="window.location.href='addProducts.action'">
			</div>
	</div>

	<div id="footerDiv">
		<jsp:include page="../shared/footer.jsp" />
	</div>
</body>
<script>
	document.getElementById("productTab2").className = "currentSelect";
</script>

<script type="text/javascript" language="javascript"
	src="<%=request.getContextPath() %>/jQuery/TableFilter/tablefilter.js"></script>
<script>
	var tfConfig = {  
		base_path: "<%=request.getContextPath() %>/jQuery/TableFilter/",	
        sort: true,  
        //col_number_format: [null,null,'US','US','US','US','US','US','US'],  
        //col_number_format: ['US','US','US','US','US','US','US','US','US'],  
        filters_row_index: 1,  
        remember_grid_values: true,  
        alternate_rows: true,  
        rows_counter: true,  
        rows_counter_text: "Displayed rows: ",  
        btn_reset: true,  
        btn_reset_text: "Clear",  
        status_bar: true,  
        fill_slc_on_demand: true,  
        col_0: "none" ,  
        //col_0: "multiple",  
        //col_1: "select",  
        //col_2: "checklist",  
        display_all_text: "[ Clear ]",  
        enable_default_theme: true,  
        input_watermark: 'Search...',  
        enable_empty_option: true,  
        enable_non_empty_option: true,  
		public_methods: true
	};  
	var tf = setFilterGrid("prodsData", tfConfig);  
</script>
</html>