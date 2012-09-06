<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="query.action" id="movementQueryForm">
	<table class="form_tb" width="100%">
		<tr>
			<td class="lable">Code:</td>
			<td><input type="text" name="movement.name" / style="width: 100px"></td>
			<td class="lable">Name:</td>
			<td><input type="text" name="movement.businessUnit_Id" style="width: 100px" /></td>
			<td class="lable">BusinessUnit:</td>
			<td><select id="product" name="movement.product_Id" style="width: 100px">
				<option selected value="">--All--</option>
				<option value="Macbook">Macbook</option>
				<option value="iMac">iMac</option>
				<option value="iPhone">iPhone</option>
				<option value="iPad">iPad</option>
				<option value="iPod">iPod</option>
				<option value="iTouch">iTouch</option>
			</select>
			</td>
			
			<td>
				<a href="#" onclick="javascript:onQuery();" class="btn btn-style-1"><b><b>Query</b></b></a>
			</td>
		</tr>
	</table>
</form>