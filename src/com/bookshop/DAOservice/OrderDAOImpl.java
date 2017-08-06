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
public class OrderDAOImpl implements OrderDAO{
	@Resource SessionFactory factory;

	public void delete(int... names) {
		for(int 	name : names){
			factory.getCurrentSession().delete(factory.getCurrentSession().load(Orders.class, name));
		}
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public Orders find(String  name) {
		
		return (Orders)factory.getCurrentSession().get(Orders.class, name);
	
	}
	public List<Orders> findByName(String names){
		
		return factory.getCurrentSession().createQuery("from Orders where username='"+names+"'").list();
		
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Orders> list() {		
		return factory.getCurrentSession().createQuery("from Orders").list();
	}

	public void save(Orders order) {
		factory.getCurrentSession().persist(order);
	}

	public void update(Orders order) {
		factory.getCurrentSession().merge(order);
	}

}


