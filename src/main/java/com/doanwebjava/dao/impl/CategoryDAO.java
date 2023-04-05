package com.doanwebjava.dao.impl;

import org.springframework.stereotype.Repository;

import com.doanwebjava.dao.ICategoryDAO;
import com.doanwebjava.entity.Category;


@Repository
public class CategoryDAO extends GeneraDAO<Category, Integer> implements ICategoryDAO {

}
