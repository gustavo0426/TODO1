package com.cidenet.service;

import java.util.List;

import com.cidenet.model.Detail;

public interface DetailService {
	
	Detail findById(int idDetail);
	List<Detail> findAll();
	void save(Detail detail);
	void delete(Detail detail);

}
