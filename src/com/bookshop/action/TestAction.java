package com.bookshop.action;

import org.springframework.web.struts.ActionSupport;



//@Result(location = "/index.jsp")
public class TestAction extends ActionSupport {
	private String param;

	public String execute() {
		return "SUCCESS";
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}
}