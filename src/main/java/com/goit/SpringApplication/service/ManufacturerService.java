package com.goit.SpringApplication.service;

import com.goit.SpringApplication.entity.Manufacturer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

@Service
public class ManufacturerService extends BaseService<Manufacturer, Long>{

    public ManufacturerService(CrudRepository<Manufacturer, Long> repository) {
        super(repository);
    }
}
