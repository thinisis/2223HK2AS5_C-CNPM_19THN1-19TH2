package com.doanwebjava.dao;

import java.util.List;

import com.doanwebjava.entity.Product;

public interface IProductDAO extends IGeneralDAO<Product, Integer> {

     	List<Product> findByKeywords(String keywords);
     	List<Product> findByCategoryId(Integer id);
     	List<Product> findItemByHot(String key);
     	List<Product> findByIdsInCookie(String id);
	

}
