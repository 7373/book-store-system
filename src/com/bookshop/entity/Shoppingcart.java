package com.bookshop.entity;
/**
 * 
* <p>Title: Shoppingcart</p>
* <p>Description: </p>
* <p>Company: </p> 
* @author 王子诚
* @date 2017年1月4日下午11:24:17
 */

public class Shoppingcart implements java.io.Serializable {

	// Fields

	private Integer shoppingcartid;
	private Integer count;
	private String bookname;
	private String username;
	private String price;

	// Constructors

	/** default constructor */
	public Shoppingcart() {
	}

	/** full constructor */
	public Shoppingcart(Integer count, String bookname, String username,
			String price) {
		this.count = count;
		this.bookname = bookname;
		this.username = username;
		this.price = price;
	}

	// Property accessors

	public Integer getShoppingcartid() {
		return this.shoppingcartid;
	}

	public void setShoppingcartid(Integer shoppingcartid) {
		this.shoppingcartid = shoppingcartid;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getBookname() {
		return this.bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}