package com.awsec2.web.action;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction  extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	private String operateType;

	public String getOperateType() {
		return operateType;
	}

	public void setOperateType(String operateType) {
		this.operateType = operateType;
	}
}
