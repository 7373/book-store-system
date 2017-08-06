package com.bookshop.DAO;

import java.util.List;
import com.bookshop.entity.*;

public interface UserDAO {
	public void save(Customer customer);
	public void update(Customer customer);
	public Customer  find(String name);
	public void delete(String... usernames);
	public List<Customer> list();
}
