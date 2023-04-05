package com.doanwebjava.service;

import java.util.List;
import java.util.Map;

import com.doanwebjava.entity.Order;
import com.doanwebjava.entity.Product;
import com.doanwebjava.service.impl.CartService;

public interface IOrderSevice extends IGeneralService<Order, Integer> {
	Order createOrder();
	void addOrderAndOrderDetail(Order o, CartService cart);
	List<Order> getAllOrderByUser();
	Order findById(Integer id);
	Map<Integer, Product> getPurchasedItems();

}
