package com.goit.SpringApplication.service;

import com.goit.SpringApplication.entity.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;


@Service
public class ProductService extends BaseService<Product, Long> {

    public ProductService(CrudRepository<Product, Long> repository) {
        super(repository);
    }
}

