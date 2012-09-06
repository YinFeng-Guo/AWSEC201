<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags"  prefix="s"%>
	<div id="formTitle">Movement List</div>
	
	<table id="table1" border="0" cellpadding="0" cellspacing="0" style="font-size:11px !important;" >
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
  				<td>${movement.name}</td>
  				<td>${movement.barcode}</td>
  				<td>${movement.price_buy}</td>
  				<td>${movement.price_sell}</td>
  				<td>${movement.date}</td>
  				<td>${movement.type}</td>
  				<td>${movement.amount}</td>
  				<td>${movement.businessUnit_Id}</td>
  				<td>${movement.product_Id}</td>
  				<td><a href="#" onclick="javascript:preEdit('${pro.guid}');">${pro.code}</a></td>
  				<td>ssssss</td>
  			</tr>
  			</c:forEach>
  		</tbody>
     </table>
<script language="javascript" type="text/javascript">  
//<![CDATA[  
	 var tf1 = setFilterGrid("table1");  
//]]>  
</script>