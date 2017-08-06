package com.bookshop.action;

import java.util.*;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.bookshop.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.bookshop.DAO.*;

@Controller
@Scope("prototype")
public class CartAction {
	@Resource
	CartDAO cartservice;
	@Resource
	OrderDAO orderservice;
	@Resource
	BookDAO bookservice;

	private Shoppingcart cart;

	public Shoppingcart getShoppingcart() {
		return cart;
	}

	public void setShoppingcart(Shoppingcart cart) {
		this.cart = cart;
	}

	private String admin;

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	private String bookname;

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	private String counts;

	public String getCounts() {
		return counts;
	}

	public void setCounts(String counts) {
		this.counts = counts;
	}

	private int id;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String buyer;

	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	private String phone;

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	private String address;

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String addcart() {

		this.cart = new Shoppingcart();
		admin = (String) ActionContext.getContext().getSession()
				.get("username");
		System.out.print(admin);
		this.cart.setUsername(admin);
		this.cart.setBookname(bookname);
		this.cart.setCount(Integer.parseInt(counts));
		Book book = bookservice.find(bookname);
		this.cart.setPrice(book.getPrice());
		cartservice.save(this.cart);
		List<Shoppingcart> cart = cartservice.findShoppingCarByName(admin);
		ActionContext.getContext().getSession().put("iter", cart);
		return "addcart";
		// System.out.println(this.cart.getCount());

		// if(cartservice.isExist(this.admin))
		// {
		// System.out.print("username"+admin);
		// System.out.print("count"+counts);
		// System.out.print("bookname"+bookname);
		//
		// //this.cart=(Shoppingcart)cartservice.findShoppingCarByName(admin);
		// //this.cart.setState("undeliver");
		// Book book=bookservice.find(bookname);
		// //Orders order=new Orders();
		// order.setBookname(book.getName());
		// order.setPrice(book.getPrice());
		// //order.setCount(Integer.parseInt(counts));
		// order.setBuyer(admin);
		// order.setId(this.cart.getShoppingcartid());
		// cartservice.update(cart);
		// orderservice.save(order);
		// Shoppingcart cart=cartservice.findShoppingCarByName(admin);
		// Iterator<Orders> iter=cart.getBks().iterator();
		// ActionContext.getContext().getSession().put("iter",iter);
		// return "addcart";
		// }
		// else
		// {//System.out.println(this.getShoppingcart());
		// // if(this.cart!=null)
		// // {
		// //System.out.println(this.username+this.bookname+this.cart.getCount());
		// this.cart.setUsername(admin);
		// this.cart.setState("undeliver");
		// cartservice.save(this.cart);
		// Book book=bookservice.find(bookname);
		// Orders order=new Orders();
		// order.setBookname(book.getName());
		// order.setPrice(book.getPrice());
		// order.setCount(Integer.parseInt(counts));
		// order.setBuyer(admin);
		// order.setShoppingcartid(this.cart.getId());
		// cartservice.update(cart);
		// orderservice.save(order);
		// Shoppingcart cart=cartservice.findShoppingCarByName(admin);
		// Iterator<Orders> iter=cart.getBks().iterator();
		// ActionContext.getContext().getSession().put("iter",iter);
		//
		// // }
		// return "addcart";
		// }
	}

	public String cardlist() {

		String id;
		id = (String) ActionContext.getContext().getSession().get("username");
		List<Shoppingcart> cart = cartservice.findShoppingCarByName(id);

		ActionContext.getContext().getSession().put("iter", cart);
		return "cardlist";

	}

	public String carddelete() {
		cartservice.delete((id));
		// String userid="1";
		// Shoppingcart cart=cartservice.findShoppingCarById(userid);
		// String id="1";
		// Shoppingcart cart=cartservice.findShoppingCarById(id);
		// Iterator<Orders> iter=cart.getBks().iterator();
		// ActionContext.getContext().getSession().put("iter",iter);
		admin = (String) ActionContext.getContext().getSession()
				.get("username");

		List<Shoppingcart> cart = cartservice.findShoppingCarByName(admin);

		ActionContext.getContext().getSession().put("iter", cart);
		return "cardlist";
	}

	public String cardpay() {
		admin = (String) ActionContext.getContext().getSession()
				.get("username");
		List<Shoppingcart> cart = cartservice.findShoppingCarByName(admin);
		System.out.print("buyer" + buyer);
		System.out.print(address);
		System.out.print(counts);
		// String id="1";
		// Shoppingcart cart=cartservice.findShoppingCarById(id);
		// cart.setAddress(address);
		// cart.setCount(Integer.parseInt(counts));
		// cart.setBuyer(buyer);
		// cartservice.update(cart);
		for(Shoppingcart car:cart){
			
		Orders order = new Orders();
		order.setAddress(address);
		order.setBookname(car.getBookname());
		order.setCount(String.valueOf(car.getCount()));
		order.setPay("已支付");
		order.setPrice(car.getPrice());
		order.setUsername(admin);
		order.setBuyer(buyer);
		order.setPhone(counts);
		order.setState("未发货");
		orderservice.save(order);
		cartservice.delete((car.getShoppingcartid()));
		}
		// cartservice.delete(name);
		ActionContext.getContext().getSession().put("message", "下单成功！");
		return "cardpay";

	}

	public String cartlist() {
		// List<Shoppingcart> ems = cartservice.list();
		admin = (String) ActionContext.getContext().getSession()
				.get("username");
		List<Orders> ems;
		
		 ems= orderservice.list();
		
		
		ActionContext.getContext().getSession().put("cart", ems);

		// for(Book em: ems)
		// System.out.println(em.getName()+em.getPublish());
		return "cartlist";
	}

	public String send() {
		// admin=(String)ActionContext.getContext().getSession().get("username");
		List<Orders> cart2 = orderservice.findByName(admin);
		for (Orders cart : cart2) {
			cart.setState("已发货");
			if (!(address.equals("")||address.equals("可以不填")))
				cart.setAddress(address);
			if (!(buyer.equals("")||buyer.equals("可以不填")))
				cart.setBuyer(buyer);
			if (!(phone.equals("")||phone.equals("可以不填")))
				cart.setPhone(phone);
			if (cart != null)
				orderservice.update(cart);
		}
		ActionContext.getContext().getSession().put("result2", "发货成功");
		List<Orders> ems = orderservice.list();
		ActionContext.getContext().getSession().put("cart", ems);
		return "send";
	}
	public String orderlist() {
		// List<Shoppingcart> ems = cartservice.list();
		admin = (String) ActionContext.getContext().getSession()
				.get("username");
		List<Orders> ems;
		if(admin!=null){
			ems=orderservice.findByName(admin);
		}
		else ems= orderservice.list();
		
		
		 ActionContext.getContext().getSession().put("cart", ems);

		// for(Book em: ems)
		// System.out.println(em.getName()+em.getPublish());
		return "orderlist";
	}

	

}
