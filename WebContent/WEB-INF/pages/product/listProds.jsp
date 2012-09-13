
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
		<table id="prodsData" cellpadding="0" cellspacing="0" width="100%" class=" TF">
			<tr>
				<th width="5%" align="center" nowrap="" style="cursor: pointer; " _sorttype="us">Actions<img src="<%=request.getContextPath() %>/jQuery/TableFilter/TF_Themes/blank.png" class="sort-arrow"></th>
				<th width="10%" align="center" nowrap="" style="cursor: pointer; " _sorttype="us">Name<img src="<%=request.getContextPath() %>/jQuery/TableFilter/TF_Themes/blank.png" class="sort-arrow"></th>
				<th width="10%" align="center" nowrap="" style="cursor: pointer; " _sorttype="us">Barcode<img src="<%=request.getContextPath() %>/jQuery/TableFilter/TF_Themes/blank.png" class="sort-arrow"></th>
				<th width="10%" align="center" nowrap="" style="cursor: pointer; " _sorttype="us">Price Buy<img src="<%=request.getContextPath() %>/jQuery/TableFilter/TF_Themes/blank.png" class="sort-arrow"></th>
				<th width="10%" align="center" nowrap="" style="cursor: pointer; " _sorttype="us">Price Sell<img src="<%=request.getContextPath() %>/jQuery/TableFilter/TF_Themes/blank.png" class="sort-arrow"></th>
				<th width="10%" align="center" nowrap="" style="cursor: pointer; " _sorttype="us">Unit<img src="<%=request.getContextPath() %>/jQuery/TableFilter/TF_Themes/blank.png" class="sort-arrow"></th>
				<th width="10%" align="center" nowrap="" style="cursor: pointer; " _sorttype="us">Active<img src="<%=request.getContextPath() %>/jQuery/TableFilter/TF_Themes/blank.png" class="sort-arrow"></th>

			</tr>
			<s:iterator value="product" var="list_prods">
				<tr>
					<td align="center"><a
						href="modifyProducts.action?product.id=<s:property value='#list_prods.id'/>"><img
							src="/AWSEC201/images/edit.png" border="0" /></a></td>
					<td align="center"><s:property value="#list_prods.name" /></td>
					<td align="center"><s:property value="#list_prods.barcode" /></td>
					<td align="center"><s:property value="#list_prods.price_buy" /></td>
					<td align="center"><s:property value="#list_prods.price_sell" /></td>
					<td align="center"><s:property value="#list_prods.unit" /></td>
					<td align="center"><s:property value="#list_prods.active" /></td>
				</tr>
			</s:iterator>
			<s:iterator value="products" var="list_prods">
				<tr>
					<td align="center"><a
						href="modifyProducts.action?product.id=<s:property value='#list_prods.id'/>"><img
							src="/AWSEC201/images/edit.png" border="0" /></a></td>
					<td align="center"><s:property value="#list_prods.name" /></td>
					<td align="center"><s:property value="#list_prods.barcode" /></td>
					<td align="center"><s:property value="#list_prods.price_buy" /></td>
					<td align="center"><s:property value="#list_prods.price_sell" /></td>
					<td align="center"><s:property value="#list_prods.unit" /></td>
					<td align="center"><s:property value="#list_prods.active" /></td>
				</tr>
			</s:iterator>
			
		</table>
