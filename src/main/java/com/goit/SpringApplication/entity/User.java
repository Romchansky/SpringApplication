package com.goit.SpringApplication.entity;


import lombok.*;
import org.hibernate.Hibernate;

import javax.persistence.*;
import javax.validation.constraints.Email;
import java.util.Objects;

@Entity
@Table(name = "user")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class User implements BaseEntity<Long>{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Email(regexp = ".+@.+\\..+", message = "Email must have @ symbol")
    @Column(name = "email",nullable = false, unique = true,length = 40)
    private String email;

    @Column(name = "password", nullable = false, unique = true, length = 40)
    private String password;

    @Column(name = "first_name", nullable = false, unique = true, length = 20)
    private String firstName;

    @Column(name = "last_name", nullable = false, unique = true, length = 40)
    private String lastName;

    @Column(name = "user_role",length = 10)
    @Enumerated(EnumType.STRING)
    private UserRole userRole;

    @Column(name = "user_status",length = 10)
    @Enumerated(EnumType.STRING)
    private UserStatus userStatus;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass (this) != Hibernate.getClass (o)) return false;
        User user = (User) o;
        return id != null && Objects.equals (id, user.id);
    }

    @Override
    public int hashCode() {
        return getClass ().hashCode ();
    }
}
