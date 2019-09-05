package com.cidenet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cidenet.model.Customer;
import com.cidenet.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerRepository customerRepo;
	
	@Override
	public Customer findById(int idCustomer) {
		return customerRepo.findById(idCustomer).get();
	}

	@Override
	public List<Customer> findAll() {
		return customerRepo.findAll();
	}

	@Override
	public void save(Customer customer) {
		customerRepo.save(customer);
	}

	@Override
	public void delete(Customer customer) {
		customerRepo.delete(customer);
	}
}
