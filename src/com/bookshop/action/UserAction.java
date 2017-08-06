package com.bookshop.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.bookshop.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.bookshop.DAO.*;

@Controller
@Scope("prototype")
public class UserAction {
	@Resource
	UserDAO userservice;
	private Customer user;

	public Customer getUser() {
		return user;
	}

	public void setUser(Customer user) {
		this.user = user;
	}

	private String usertype;

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;

	}

	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;

	}

	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;

	}

	private String email;

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private String realname;

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	private String address;

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	private String telephone;

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String login() throws Exception {

		if (usertype.equals("manager")
		// &&(username.equals("admin"))&&(password.equals("123"))
		) {

			return "admin";
		} 
		
			
	
		else if (usertype.equals("customer")) {

			if (username != null && password != null) {
				if (userservice.find(username).getPassword().equals(password)) {
					ActionContext.getContext().getSession()
							.put("username", username);
					return "success";

				} else
					return "fail";
			} else
				return "fail";
		} else
			return "fail";

	}

	public String Register() throws Exception {
		userservice.save(this.user);
		ActionContext.getContext().put("message", "×¢²á³É¹¦");
		return "register";

	}

}
