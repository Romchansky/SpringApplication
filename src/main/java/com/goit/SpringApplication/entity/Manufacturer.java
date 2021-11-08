package com.goit.SpringApplication.entity;


import lombok.*;
import org.hibernate.Hibernate;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "manufacturer")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Manufacturer implements BaseEntity<Long>{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;


    @Size(min = 5, max = 50, message = "Name length must be 5-50 symbols")
    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @OneToMany(mappedBy = "manufacturer", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @ToString.Exclude
    private Set<Product> products;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass (this) != Hibernate.getClass (o)) return false;
        Manufacturer that = (Manufacturer) o;
        return id != null && Objects.equals (id, that.id);
    }

    @Override
    public int hashCode() {
        return getClass ().hashCode ();
    }
}
