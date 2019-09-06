package com.cidenet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cidenet.model.Customer;

@Repository
public interface CustomerRepository  extends JpaRepository<Customer, Integer>{

	Customer findByName(String name);
}
