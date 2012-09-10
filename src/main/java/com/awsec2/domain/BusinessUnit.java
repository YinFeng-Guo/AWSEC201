package com.awsec2.domain;

public class BusinessUnit {

	private long id;
	private String name;
	private String address;
	private String phone;
	private String fax;
	private String mobile;
	private String active;
	private long organization_Id;
	
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public long getOrganization_Id() {
		return organization_Id;
	}
	public void setOrganization_Id(long organization_Id) {
		this.organization_Id = organization_Id;
	}
}
