package com.awsec2.web.action.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.awsec2.domain.Organization;
import com.awsec2.domain.User;
import com.awsec2.service.IOrganizationService;
import com.awsec2.service.IUserService;
import com.awsec2.web.action.BaseAction;
import com.opensymphony.xwork2.Preparable;

public class UserAction extends BaseAction implements Preparable{

	private static final long serialVersionUID = 3923142709323631907L;

	@Autowired
	private IUserService userService = null;
	@Autowired
	private IOrganizationService organizationService = null;
	
	private User user = null;
	private List<User> users = null;
	private Organization organization = null;
	private List<Organization> organizations = null;
	
	private String uid;
	
	public Organization getOrganization() {
		return organization;
	}
	public void setOrganization(Organization organization) {
		this.organization = organization;
	}

	public List<Organization> getOrganizations() {
		return organizations;
	}
	public void setOrganizations(List<Organization> organizations) {
		this.organizations = organizations;
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
	public String unspecial() throws Exception{
		return SUCCESS;
	}	
	public String query() throws Exception {
		users = userService.queryUser(user);
		return "success";
	}
	
	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the users
	 */
	public List<User> getUsers() {
		return users;
	}

	/**
	 * @param users the users to set
	 */
	public void setUsers(List<User> users) {
		this.users = users;
	}

	public String listAllUser(){
		users = userService.listAllUser();
		if(users != null){
			System.out.println("Total records : " + users.size());
		}else{
			System.out.println("No User records");
		}
		return SUCCESS;
	}
	
	public String add(){
		return SUCCESS;
	}
	
	public String testAddOneUser(){
		
		organizations = organizationService.getOrganizationIdName();
		if(organizations == null){
			System.out.println("organizations add is null");
		}else{
			System.out.println("organizations add is not null");
		}
		return SUCCESS;
	}
	
	public String addUser(){
		List<User> userss = new ArrayList<User>();
		if(users != null){
			System.out.println("Add Users Size:" + users.size());
			for(User user: users){
				if(user.getUsername() == null || user.getUsername().trim().equals("")){
					continue;
				}
				user.setPassword("123456");
				userss.add(user);
				System.out.println("Add user Firstnaem :" + user.getFirstname());
				System.out.println("Add user Lastnaem :" + user.getLastname());
				System.out.println("Add user super :" + user.isSupers());
				System.out.println("Add user active :" + user.isActive());
				System.out.println("Add user username :" + user.getUsername());
				System.out.println("Add user Password :" + user.getPassword());
				System.out.println("Add user Org :" + user.getOrganization_id());
			}
		}else{
			System.out.println("Add Users is null");
		}
		userService.addUsers(userss);
		users = userService.listAllUser();
		return SUCCESS;
	}
	
	public String addOneUser(){
		if(user != null){
			System.out.println("Add One User Name : " + user.getUsername() + ", Organization Id : " + user.getOrganization_id());
			System.out.println("User Super :" + user.isSupers());
			System.out.println("User Active : " + user.isActive());
		}else{
			System.out.println("Add One User is null.");
		}
		user.setPassword("123456");
		userService.addUser(user);
		users = userService.listAllUser();
		return SUCCESS;
	}
	
	public String delOneUser(){
		if(uid == null){
			System.out.println("Uid id null");
		}else{
			System.out.println("Uid:" + uid);
		}
		try {
			userService.delOneUser(Long.parseLong(uid));
		} catch (Exception e) {
			e.printStackTrace();
		}
		users = userService.listAllUser();
		return SUCCESS;
	}
	
	public String editOneUser(){
		if(uid == null){
			System.out.println("Uid id null");
		}else{
			System.out.println("Uid:" + uid);
		}
		try {
			user = new User();
			user.setId(Long.parseLong(uid));
			users = userService.queryUser(user);
			organizations = organizationService.getOrganizationIdName();
			//userService.editOneUser(Long.parseLong(uid));
		} catch (Exception e) {
			e.printStackTrace();
		}
		//users = userService.listAllUser();
		return SUCCESS;
	}
	
	public String updateOneUser(){
		if(user == null){
			System.out.println("User is null when update a user");
		}else{
			userService.updateOneUser(user);
		}
		users = userService.listAllUser();
		return SUCCESS;
	}
	
	public String searchByUsername(){
		if(user == null){
			System.out.println("searchName is null");
		}else{
			System.out.println("In search user name is " + user.getUsername());
			users = userService.searchByUsername(user);
			if(users == null){
				System.out.println("In search users is null");
			}else{
				System.out.println("In search Users is not null , size : " + users.size());
			}
		}
		return SUCCESS;
	}
}
