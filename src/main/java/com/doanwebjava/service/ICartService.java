package com.doanwebjava.service;

import java.util.Collection;

import com.doanwebjava.entity.Product;

public interface ICartService {
	void addCart(Integer id);
	void removeCart(Integer id);
	void updateCart(Integer id, int qty);
	void clear();
	int getCountCart();
	double getAmountCart();
	Collection<Product> getItemsCart();
	
	

}
