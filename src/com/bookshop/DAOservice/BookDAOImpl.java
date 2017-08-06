package com.bookshop.DAOservice;


import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bookshop.DAO.*;
import com.bookshop.entity.*;



@Service @Transactional
public class BookDAOImpl implements BookDAO{
	@Resource SessionFactory factory;

	public void delete(String... names) {
		for(String 	name : names){
			factory.getCurrentSession().delete(factory.getCurrentSession().load(Book.class, name));
		}
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public Book find(String name) {
		return (Book)factory.getCurrentSession().get(Book.class, name);
	
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Book> list() {		
		return factory.getCurrentSession().createQuery(" from Book").list();
	}

	public void save(Book book) {
		factory.getCurrentSession().persist(book);
	}

	public void update(Book book) {
		factory.getCurrentSession().merge(book);
	}

}


