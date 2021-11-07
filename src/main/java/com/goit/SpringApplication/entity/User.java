package com.goit.SpringApplication.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Email;

@Entity
@Table(name = "user")
@Data
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



}
