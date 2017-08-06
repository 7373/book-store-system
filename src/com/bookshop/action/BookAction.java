package com.bookshop.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.easymock.EasyMock;
import org.junit.Test;
import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.bookshop.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.bookshop.DAO.*;

@Controller
@Scope("prototype")
public class BookAction {
	@Resource
	BookDAO bookservice;
	private Book book;

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	private String name;
	private String writer;
	private String publish;
	private String pubdate;
	private String isbn;
	private String contents;
	private String image;

	private String searchname;

	public String getSearchname() {
		return searchname;
	}

	public void setSearchname(String searchname) {
		this.searchname = searchname;
	}

	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	private String price;

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWriter() {
		return this.writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPublish() {
		return this.publish;
	}

	public void setPublish(String publish) {
		this.publish = publish;
	}

	public String getPubdate() {
		return this.pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}

	public String getIsbn() {
		return this.isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String add() {
		Book book = new Book();
		book.setPrice(price);
		book.setContents(contents);
		book.setImage(image);
		book.setIsbn(isbn);
		book.setName(name);
		book.setPubdate(pubdate);
		book.setPublish(publish);
		book.setWriter(writer);
		System.out.println(book.getName());
		bookservice.save(book);
		ActionContext.getContext().getSession().put("book", book);
		return "add";
	}

	public String list() {
		List<Book> ems = bookservice.list();
		ActionContext.getContext().getSession().put("book", ems);
		ActionContext.getContext().getSession().put("username", username);
		// for(Book em: ems)
		// System.out.println(em.getName()+em.getPublish());
		return "list";
	}
public String a(){
	return "list";
	
}
	@Test
	public void easymockTestList() {
		String a="list";
		try {
			//EasyMock.expect(a()).andReturn(a);

			//EasyMock.replay(this);
		//	EasyMock.verify(this);

		} catch (

		Exception e) {
			e.printStackTrace();
		}

	}

	public String search() throws UnsupportedEncodingException {
		// String a = new String(searchname.getBytes(
		// "iso-8859-1"), "UTF-8");
		// System.out.println("search" + a);
		Book book = bookservice.find(searchname);

		ActionContext.getContext().getSession().put("book", book);
		return "search";

	}

	@Test
	public void testSearch() throws UnsupportedEncodingException {
		try {
//			EasyMock.expect("search").andReturn("search").anyTimes();
//
//			EasyMock.replay(this);
//			EasyMock.verify(this);

		} catch (

		Exception e) {
			e.printStackTrace();
		}

	}

	public String searchforupdate() {

		System.out.println("searchfor" + name);
		Book book = bookservice.find(name);

		ActionContext.getContext().getSession().put("book", book);
		return "update1";
	}

	public String update() {
		System.out.print(this.book.getName());
		bookservice.update(this.book);
		Book book = bookservice.find(this.book.getName());
		ActionContext.getContext().getSession().put("book", book);
		return "update";
	}

	public String delete() {
		System.out.print(this.book.getName());
		bookservice.delete(this.book.getName());
		List<Book> ems = bookservice.list();

		ActionContext.getContext().getSession().put("book", ems);
		ActionContext.getContext().getSession().put("result", "成功删除！删除后的图书如下：");

		return "delete";
	}

}
