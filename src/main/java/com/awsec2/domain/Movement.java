package com.awsec2.domain;

import java.math.BigDecimal;
import java.util.Date;

public class Movement {
	private long id;
	private String name;
	private String barcode;
	private BigDecimal price_buy;
	private BigDecimal price_sell;
	private Date date;
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
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public BigDecimal getPrice_buy() {
		return price_buy;
	}
	public void setPrice_buy(BigDecimal price_buy) {
		this.price_buy = price_buy;
	}
	public BigDecimal getPrice_sell() {
		return price_sell;
	}
	public void setPrice_sell(BigDecimal price_sell) {
		this.price_sell = price_sell;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
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
