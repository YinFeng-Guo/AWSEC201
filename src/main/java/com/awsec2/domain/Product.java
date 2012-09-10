package com.awsec2.domain;

import java.math.BigDecimal;

public class Product {
	private long id;
	private String name;
	private String barcode;
	private BigDecimal price_buy;
	private BigDecimal price_sell;
	private String unit;
	private String active;
	private long organization_id;
	
	
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
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public long getOrganization_id() {
		return organization_id;
	}
	public void setOrganization_id(long organization_id) {
		this.organization_id = organization_id;
	}

	
}
