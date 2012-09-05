package com.awsec2.domain;
import java.io.Serializable;
/**
 * 
 * @author Mount_Guo
 *
 */
public class User implements Serializable{
	private static final long serialVersionUID = 2330041131665145136L;	
	
	private long id;
	private String firstname;
	private String lastname;
	private String username;
	private String password;
	private boolean supers;
	private boolean active;
	private long organization_id;
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getFirstname() {
		return firstname;
	}
	
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	public String getLastname() {
		return lastname;
	}
	
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isSupers() {
		return supers;
	}
	
	public void setSupers(boolean supers) {
		this.supers = supers;
	}
	
	public boolean isActive() {
		return active;
	}
	
	public void setActive(boolean active) {
		this.active = active;
	}
	
	public long getOrganization_id() {
		return organization_id;
	}
	
	public void setOrganization_id(long organization_id) {
		this.organization_id = organization_id;
	}
}