package com.awsec2.domain;
import java.io.Serializable;
/**
 * 
 * @author Mount_Guo
 *
 */
public class User implements Serializable{
	private static final long serialVersionUID = 2330041131665145136L;	
	private String guid;
	private String email_id;
	private String password;
	private String type;
	/**
	 * @return the guid
	 */
	public String getGuid() {
		return guid;
	}
	/**
	 * @param guid the guid to set
	 */
	public void setGuid(String guid) {
		this.guid = guid;
	}
	/**
	 * @return the email_id
	 */
	public String getEmail_id() {
		return email_id;
	}
	/**
	 * @param emailId the email_id to set
	 */
	public void setEmail_id(String emailId) {
		email_id = emailId;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}	
}