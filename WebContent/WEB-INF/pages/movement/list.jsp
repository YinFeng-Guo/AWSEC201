<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags"  prefix="s"%>
		<div id="formTitle">Movement List</div>
			<table id="myTable" class="tablesorter" border="0" cellpadding="0" cellspacing="1">
		  		<thead>
		  			<tr>
		  				<th width="5px"></th>
		  				<th>Id</th>
		  				<th>Name</th>
		  				<th>Barcode</th>
		  				<th>Price Buy</th>
		  				<th>Price Sell</th>
		  				<th>Date</th>
		  				<th>Type</th>
		  				<th>Amount</th>
		  				<th>Product</th>
		  				<th>BusinessUnit</th>
		  			</tr>
		  		</thead>
		  		<tbody>
		  			<c:forEach items="${list_movements}" var="movement" >
		  			<tr>
		  				<td><input type="checkbox" name="check" value="${movement.id}"></input></td>
		  				<td>${movement.Name}</td>
		  				<td>${movement.Barcode}</td>
		  				<td>${movement.Price_buy}</td>
		  				<td>${movement.Price_sell}</td>
		  				<td>${movement.Date}</td>
		  				<td>${movement.Type}</td>
		  				<td>${movement.Amount}</td>
		  				<td>${movement.BusinessUnit_Id}</td>
		  				<td>${movement.Product_Id}</td>
		  				<td><a href="#" onclick="javascript:preEdit('${pro.guid}');">${pro.code}</a></td>
		  			</tr>
		  			</c:forEach>
		  		</tbody>
		     </table>
		     <div style="display:none">
		     <div id="dialog" title="Delete product module">
		     	<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>
		     	The model will be deleted and cannot be recovered. Are you sure?</p>
		     </div>
		     </div>
<script language="javascript" defer="defer">
$("#myTable").tablesorter({headers: { 0:{sorter: false},4:{sorter: false}},widgets: ['zebra']});
</script>
