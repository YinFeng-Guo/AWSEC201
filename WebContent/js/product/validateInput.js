
//检查对象是否为空，obj-对象，vMc-提示信息
function checkNull(obj, vline) {
	//判断输入框是否为空，为空时弹出提示框

	var v = document.getElementById(obj).value;
	v = v.replace(/(^\s*)|(\s*$)/g, "");///去除空格的方法
	alert(" 输入值为空！" + v.length);
	if (v.length == 0) {
		alert(vline + " 输入值为空！");
		return false;
	}
	return true;
}

//关闭窗口
function closewin() {
	//关闭窗体无网页提示关闭信息
	window.opener = "";
	window.close();
}

//检查输入字符串是否为数字
//参数说明：数据项，输入的对象
//返回值：1-是数字,0-非数字
function isNum(vid, obj) {
	re = new RegExp("[^0-9]");
	var s;
	var i_value = document.getElementById(obj).value;
	if (s = i_value.match(re)) {
		alert("'" + vid + "' 中含有非法字符 '" + s + "'！");
		return 0;
	}
	return 1;
}

//强制把大写转换成小写
function toLowCase() {
	//  alert("ss");
	if (event.keyCode >= 65 && event.keyCode <= 90)
		event.keyCode = event.keyCode + 32;
}

//手机号码校验，长度为11位数字。
function checkMobile(str) {

	var Str = document.getElementById(str).value;
	RegularExp = /^[0-9]{11}$/
	if (RegularExp.test(Str)) {
		return true;
	} else {
		alert("手机号格式不正确！应该为11位长度的数字！");
		return false;
	}
}
//电子邮件校验
function checkMail(str) {
	var Str = document.getElementById(str).value;
	RegularExp = /[a-z0-9]*@[a-z0-9]*\.[a-z0-9]+/gi
	if (RegularExp.test(Str)) {
		return true;
	} else {
		alert("电子信箱格式不对！");
		return false;
	}
}

//电话号码校验
function checkTel(str) {
	//
	var Str = document.getElementById(str).value;
	RegularExp = /^((([0-9]{4}|[0-9]{3})-)|(\(([0-9]{4}|[0-9]{3})\)))*([0-9]{7}|[0-9]{8})$|^[0-9]{11}$/
	if (RegularExp.test(Str)) {
		//alert("电话号码格式对");
		return true;
	} else {
		alert("电话号码格式不对");
		return false;
	}
}
//身份证号码校验
function checkID_Card(str) {
	var Str = document.getElementById(str).value;
	RegularExp = /^[0-9]{17}[0-9A-Za-z]{1}$|^[0-9]{14}[0-9A-Za-z]{1}$/
	if (RegularExp.test(Str)) {
		return true;
	} else {
		alert("身份证号格式不对！");
		return false;
	}
}
//校验必须是数字或者字母
function checkNumStr(str) {
	var Str = document.getElementById(str).value;
	var str1 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var i = 0;
	for (i = 0; i < Str.length; i++) {
		var onechar = Str.substring(i, i + 1);
		//alert(onechar);
		if (!(str1.indexOf(onechar) != -1)) {
			alert("必须是数字[0-9]、字母[a-z、A-Z]或组合!");
			return false;
		}
	}

	return true;
}

//检验数字是否正确（可以为负数）
//参数1：sourceStr 数字
//int_num 整数位数
//point_num 小数位数
//alertStr 弹出的提示信息
function JudgeDicimalFormat(str, int_num, point_num, alertStr) {
	var sourceStr = document.getElementById(str).value;
	RegularExp_tmp = "/^[+,-]{0,1}[0-9]{0," + int_num + "}[.]{1}[0-9]{0,"
			+ point_num + "}$|^[+,-]{0,1}[0-9]{0," + int_num + "}$/";
	RegularExp = eval(RegularExp_tmp);
	if (RegularExp.test(sourceStr)) {
		return true;
	} else {
		alert(alertStr + "格式不正确！最长为" + int_num + "位整数位，" + point_num
				+ "位小数位的数字！");
		//sourceStr.select();
		return false;
	}
}

//将小数四舍五入
//decimalNum 为：保留小数点后几位
function roundFloat(str, decimalNum) {
	var sourceValue = document.getElementById(str).value;
	if (isNaN(sourceValue)) {
		alert("sourceValue非法字符 ");
		document.getElementById(str).value = "";
		return sourceValue;
	}
	var multiplyValue = Math.pow(10, parseInt(decimalNum));
	document.getElementById(str).value = (Math.round(multiplyValue
			* sourceValue))
			/ multiplyValue;
	//return (Math.round(multiplyValue*sourceValue))/multiplyValue;
}
