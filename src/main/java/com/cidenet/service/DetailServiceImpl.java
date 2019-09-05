package com.cidenet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cidenet.model.Detail;
import com.cidenet.repository.DetailRepository;

@Service
public class DetailServiceImpl implements DetailService{

	@Autowired
	private DetailRepository detailRepo;
	
	@Override
	public Detail findById(int idDetail) {
		return detailRepo.findById(idDetail).get();
	}

	@Override
	public List<Detail> findAll() {
		return detailRepo.findAll();
	}

	@Override
	public void save(Detail detail) {
		detailRepo.save(detail);
	}

	@Override
	public void delete(Detail detail) {
		detailRepo.delete(detail);
	}
}
