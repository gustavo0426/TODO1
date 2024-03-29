package com.cidenet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cidenet.model.Detail;

@Repository
public interface DetailRepository extends JpaRepository<Detail, Integer>{

}
