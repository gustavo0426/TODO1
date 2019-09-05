package com.cidenet.service;

import java.util.List;

import com.cidenet.model.Sale;

public interface SaleService {

	Sale findById(int idSale);
	List<Sale> findAll();
	void save(Sale sale);
	void delete(Sale sale);
}
