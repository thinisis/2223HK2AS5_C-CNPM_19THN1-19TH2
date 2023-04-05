package com.doanwebjava.dao;

import java.util.List;

import com.doanwebjava.entity.Customer;

public interface ICustomerDAO extends IGeneralDAO<Customer, String> {
	List<Customer> findByRoles(boolean roles);

}
