package com.doanwebjava.service;

import java.util.List;

import com.doanwebjava.entity.Category;

public interface ICategoryService extends IGeneralService<Category, Integer> {
	List<Category> getRamDomByCategory();
}
