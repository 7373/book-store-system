package com.bookshop.DAO;

import java.util.List;

import com.bookshop.entity.*;

public interface OrderDAO {
	public void save(Orders order);
	public void update(Orders order);
	public Orders find(String names);
	public List<Orders> findByName(String names);
	public void delete(int... names);
	public List<Orders> list();
}
