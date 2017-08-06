package com.bookshop.DAO;

import java.util.List;

import com.bookshop.entity.Book;

public interface BookDAO {
	public void save(Book book);
	public void update(Book book);
	public Book  find(String name);
	public void delete(String... names);
	public List<Book> list();
}
