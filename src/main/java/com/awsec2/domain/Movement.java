package com.awsec2.domain;

import java.util.Date;

public class Movement {
	private long id;
	private String name;
	private Date oper_date;
	private String type;
	private int amount;
	private String businessUnit_Id;
	private String product_Id;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getOper_date() {
		return oper_date;
	}
	public void setOper_date(Date oper_date) {
		this.oper_date = oper_date;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getBusinessUnit_Id() {
		return businessUnit_Id;
	}
	public void setBusinessUnit_Id(String businessUnit_Id) {
		this.businessUnit_Id = businessUnit_Id;
	}
	public String getProduct_Id() {
		return product_Id;
	}
	public void setProduct_Id(String product_Id) {
		this.product_Id = product_Id;
	}
	
}
