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
public class UserDAOImpl implements UserDAO{
	@Resource SessionFactory factory;

	public void delete(String... names) {
		for(String 	name : names){
			factory.getCurrentSession().delete(factory.getCurrentSession().load(Customer.class, name));
		}
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public Customer find(String name) {
		return (Customer)factory.getCurrentSession().get(Customer.class, name);
	
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Customer> list() {		
		return factory.getCurrentSession().createQuery("from Customer").list();
	}

	public void save(Customer customer) {
		factory.getCurrentSession().persist(customer);
	}

	public void update(Customer customer) {
		factory.getCurrentSession().merge(customer);
	}

}


