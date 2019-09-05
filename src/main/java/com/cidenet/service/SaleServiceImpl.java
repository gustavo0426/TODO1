package com.cidenet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cidenet.model.Sale;
import com.cidenet.repository.SaleRepository;

@Service
public class SaleServiceImpl implements SaleService{

	@Autowired
	private SaleRepository saleRepo;
	
	@Override
	public Sale findById(int idSale) {
		return saleRepo.findById(idSale).get();
	}

	@Override
	public List<Sale> findAll() {
		return saleRepo.findAll();
	}

	@Override
	public void save(Sale sale) {
		saleRepo.save(sale);
	}

	@Override
	public void delete(Sale sale) {
		saleRepo.delete(sale);
	}
}
