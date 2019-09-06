package com.cidenet.service;

import java.util.List;

import com.cidenet.model.Customer;

public interface CustomerService {
	
	Customer findById(int idCustomer);
	List<Customer> findAll();
	void save(Customer customer);
	void delete(Customer customer);
	Customer findByName(String name);
}
