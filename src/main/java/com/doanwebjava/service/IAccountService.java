package com.doanwebjava.service;

import java.util.List;

import com.doanwebjava.entity.Customer;

public interface IAccountService extends IGeneralService<Customer, String> {
	void updateUser(Customer user);
	List<Customer> findByRoles(boolean admin);

}
