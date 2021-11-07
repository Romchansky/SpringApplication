package com.goit.SpringApplication.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

@Entity
@Table(name = "product")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product implements BaseEntity<Long>{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Size(min = 5, max = 50, message = "Name length must be 5-50 symbols")
    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @Column(name = "price", nullable = false, length = 50)
    private BigDecimal price;

    @ManyToOne()
    @JoinColumn(name = "manufacturer_id", nullable = false)
    private Manufacturer manufacturer;


}
