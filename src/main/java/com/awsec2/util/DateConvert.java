package com.awsec2.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import ognl.DefaultTypeConverter;

@SuppressWarnings("unchecked")
public class DateConvert extends DefaultTypeConverter {
	public Object convertValue(Map context, Object value, Class toType) {
		if (toType == Date.class) { // 如果想转换的是Date类型时将做以下操作
			// 因为在Struts2里会表单传过来的非字符串数据转换为String[],所以这里得取第一个值
			String dataStr = ((String[]) value)[0];
			SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd"); // 转换为自己想要日期格式
			String dateStr[] = dataStr.split("-");
			for(int i = 0 ; i<dateStr.length; i++) {
				if(dateStr[i].length()==0) {
					return null;
				}
			}
			try {
				if(dataStr == "" || dateStr.length !=3 ) {
					return null;
				}
				return f.parse(dataStr);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (toType == String.class) {
			String dataStr = ((Date) value).toString();
			return dataStr;
		}
		return null;
	}
}