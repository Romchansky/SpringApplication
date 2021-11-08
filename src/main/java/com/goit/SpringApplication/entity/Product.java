package com.goit.SpringApplication.entity;

import lombok.*;
import org.hibernate.Hibernate;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name = "product")
@Getter
@Setter
@ToString
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass (this) != Hibernate.getClass (o)) return false;
        Product product = (Product) o;
        return id != null && Objects.equals (id, product.id);
    }

    @Override
    public int hashCode() {
        return getClass ().hashCode ();
    }
}
