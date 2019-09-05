package com.cidenet.service;

import java.util.List;

import com.cidenet.model.Product;

public interface ProductService {
	
	Product findById(int idProduct);
	List<Product> findAll();
	List<Product> findAllStock(int stock);
	void save(Product product);
	void delete(Product product);
	
}
