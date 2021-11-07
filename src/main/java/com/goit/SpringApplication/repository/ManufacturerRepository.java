package com.goit.SpringApplication.repository;

import com.goit.SpringApplication.entity.Manufacturer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

@Service
public interface ManufacturerRepository extends CrudRepository<Manufacturer, Long> {
}
