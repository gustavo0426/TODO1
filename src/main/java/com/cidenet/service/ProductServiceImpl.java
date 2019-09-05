package com.cidenet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cidenet.model.Product;
import com.cidenet.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepo;

	public List<Product> findAll() {
		return productRepo.findAll();
	}
	
	@Override
	public List<Product> findAllStock(int stock) {
		return productRepo.findByStockGreaterThan(stock);
	}

	@Override
	public void save(Product product) {
		productRepo.save(product);
	}

	@Override
	public Product findById(int idProduct) {
		return productRepo.findById(idProduct).get();
	}

	@Override
	public void delete(Product product) {
		productRepo.delete(product);
	}

}
