package com.doanwebjava.dao;

import java.util.List;

import com.doanwebjava.entity.Customer;
import com.doanwebjava.entity.Order;
import com.doanwebjava.service.impl.CartService;

public interface IOrderDAO extends IGeneralDAO<Order, Integer> {

	void create(Order o, CartService cart);
	List<Order> findByUser(Customer user);

}
