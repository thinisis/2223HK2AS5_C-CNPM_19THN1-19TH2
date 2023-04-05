package com.doanwebjava.dao.impl;

import org.springframework.stereotype.Service;

import com.doanwebjava.dao.IOrderDetailDAO;
import com.doanwebjava.entity.OrderDetail;
@Service
public class OrderDetailDAO extends GeneraDAO<OrderDetail, Integer> implements IOrderDetailDAO{

}
