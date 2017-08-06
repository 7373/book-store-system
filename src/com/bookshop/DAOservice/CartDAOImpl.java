package com.bookshop.DAOservice;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bookshop.DAO.*;
import com.bookshop.entity.*;

@Service
@Transactional
public class CartDAOImpl implements CartDAO {
	@Resource
	SessionFactory factory;

	public void delete(int names) {

		factory.getCurrentSession().delete(
			factory.getCurrentSession().load(Shoppingcart.class, names));
	}

	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public Shoppingcart find(String name) {
		return (Shoppingcart) factory.getCurrentSession().get(
				Shoppingcart.class, name);

	}
	public void delete(String... names) {
		for (String name : names) {
			factory.getCurrentSession().delete(
					factory.getCurrentSession().load(Shoppingcart.class, name));
		}
	}
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public List<Shoppingcart> list() {
		return factory.getCurrentSession().createQuery("from Shoppingcart")
				.list();
	}

	public void save(Shoppingcart cart) {
		factory.getCurrentSession().persist(cart);
	}

	public void update(Shoppingcart cart) {
		factory.getCurrentSession().merge(cart);
	}

	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public List<Shoppingcart> findShoppingCarByName(String name) {
		List<Shoppingcart> shoppingCar = (List<Shoppingcart>) factory
				.getCurrentSession()
				.createQuery("from Shoppingcart where username='" + name + "'")
				.list();
		return shoppingCar;
	}

	public void removeShoppingCar(String name) {
		Shoppingcart shoppingCar = (Shoppingcart) factory.getCurrentSession()
				.createQuery("from Shoppingcart where username='" + name + "'")
				.uniqueResult();
		factory.getCurrentSession().delete(shoppingCar);
	}

	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public Shoppingcart findShoppingCarById(String id) {
		return (Shoppingcart) factory.getCurrentSession().get(
				Shoppingcart.class, id);
	}

	public boolean isExist(String name) {
		Shoppingcart shoppingCar = (Shoppingcart) factory.getCurrentSession()
				.createQuery("from Shoppingcart where username='" + name + "'")
				.uniqueResult();
		if (shoppingCar != null)
			return true;
		else
			return false;
	}

}
