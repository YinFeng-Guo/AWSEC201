<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags"  prefix="s"%>
			<table id = "prodsData"  cellpadding="0" cellspacing="0" width="100%" class=" TF">
			<tr>
				<th align="center" width="5px">Actions</th>
				<th align="center">Name</th>
				<th align="center">Product Name</th>
				<th align="center">Operate Date</th>
				<th align="center">Type</th>
				<th align="center">Amount</th>
			</tr>
			<s:iterator value="movements" var="list_movms">
				<tr>
					<td align="center"><a
						href="modifyMovms.action?movement.id=<s:property value='#list_movms.id'/>"><img
							src="/AWSEC201/images/edit.png" border="0" /></a></td>
					<td align="center"><s:property value="#list_movms.name" /></td>
					<td align="center"><a
						href="../product/loadProdById.action?product.id=<s:property value='#list_movms.product_Id'/>"><s:property value="#list_movms.prodName" /></a></td>
					<td align="center"><s:date name="#list_movms.oper_date" format="yyyy-MM-dd"/></td>
					<td align="center"><s:property value="#list_movms.type" /></td>
					<td align="center"><s:property value="#list_movms.amount" /></td>


				</tr>
			</s:iterator>
		</table>
		
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
        //col_5: "select",  
        //col_6: "select",  
        display_all_text: "[ Clear ]",  
        enable_default_theme: true,  
        input_watermark: 'Search...',  
        enable_empty_option: true,  
        enable_non_empty_option: true,  
		public_methods: true
	};  
	var tf = setFilterGrid("prodsData", tfConfig);  
</script>		