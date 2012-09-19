<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome ITBconsult</title>
<link rel="Shortcut Icon" href="images/ico.ico">
<link href="<%=request.getContextPath()%>/css/awsec2_login.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.0.js"></script>

<link rel="stylesheet"
	href="/AWSEC201/css/movement/validationEngine.jquery.css"
	type="text/css" />

<script type="text/javascript"
	src="/AWSEC201/js/product/jquery.validationEngine-en.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"
	src="/AWSEC201/js/product/jquery.validationEngine.js"
	type="text/javascript" charset="utf-8"></script>
<script>
	jQuery(document).ready(function() {
		// binds form submission and fields to the validation engine
		jQuery("#form").validationEngine();
	});

	/**
	 *
	 * @param {jqObject} the field where the validation applies
	 * @param {Array[String]} validation rules for this field
	 * @param {int} rule index
	 * @param {Map} form options
	 * @return an error string if validation failed
	 */
	function checkHELLO(field, rules, i, options) {
		if (field.val() != "HELLO") {
			// this allows to use i18 for the error msgs
			return options.allrules.validate2fields.alertText;
		}
	}
</script>

</head>
<body>
	<div id="contain">
		<div id="systemname">Cloud Warehousing</div>
		<div id="applesqmlogin">
			<div id="subbody">
				<div id="largeLogo">
					<table id="logoPic">
						<tr>
							<td><img
								src="<%=request.getContextPath()%>/images/logo.png" /></td>
						</tr>
					</table>
				</div>
				<div id="loginForm">
					<form id="form" name="form"
						action="<%=request.getContextPath()%>/login.action" method="post">
						<table id="loginTable">
							<tr>
								<td colspan="2" id="formTitle">Login</td>
							</tr>
							<tr>
								<td><span class="email">User Name</span></td>
								<td><input
									class="validate[required,custom[email]] text-input" type="text"
									name="user.username" value="haobo.song@gmail.com"
									style="font-size: 17px; text-align: center; width: 280px; height: 30px; text-align: left; background-color: transparent; border-style: solid; border-color: #999; border-width: 2px; margin-top: 13px; margin-left: 10px; font-family: 'Lucida Grande', 'Lucida Sans Unicode', sans-serif;" /></td>
							</tr>
							<tr>
								<td><span class="password">Password</span></td>
								<td><input class="passwordtext" type="password"
									name="user.password" value="666666" /></td>
							</tr>
							<tr>
								<td colspan="2"
									style="text-align: right; padding: 20px 70px 0 0"><a
									href="#"> <input id="button_login" class="submit" type="submit" border="0" value="" style="cursor:hand" ></a>
										
										</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div id="footwords">All rights reserved</div>
		</div>
	</div>
</body>
</html>