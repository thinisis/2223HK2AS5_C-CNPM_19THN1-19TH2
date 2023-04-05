package com.doanwebjava.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doanwebjava.dao.ICustomerDAO;
import com.doanwebjava.entity.Customer;
import com.doanwebjava.service.IAccountService;



@Service
public class AccountService extends GeneralService<Customer, String> implements IAccountService {

	@Autowired
	private ICustomerDAO dao;


	@Override
	public Customer findById(String id) {
		return dao.findById(id);
	}

	@Override
	public void updateUser(Customer user) {
		dao.update(user);
	}


	@Override
	public List<Customer> findByRoles(boolean roles) {
		return dao.findByRoles(roles);
	}

}
