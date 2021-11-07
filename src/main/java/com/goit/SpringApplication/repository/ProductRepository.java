package com.goit.SpringApplication.repository;

import com.goit.SpringApplication.entity.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

@Service
public interface ProductRepository extends CrudRepository<Product, Long> {

}
