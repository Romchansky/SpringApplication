package com.goit.SpringApplication.service;

import com.goit.SpringApplication.entity.User;
import com.goit.SpringApplication.entity.UserRole;
import com.goit.SpringApplication.entity.UserStatus;
import com.goit.SpringApplication.repository.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService extends BaseService<User, Long> {

    private final UserRepository repository;
    private final BCryptPasswordEncoder encoder;

    public UserService(UserRepository repository, BCryptPasswordEncoder encoder) {
        super(repository);
        this.repository = repository;
        this.encoder = encoder;
    }

    public void register(User user) {
        if (repository.existsByEmail(user.getEmail())) {
            throw new RuntimeException("Account with provided email already exists");
        }
        user.setUserRole(UserRole.ROLE_ADMIN);
        user.setUserStatus(UserStatus.ACTIVE);
        user.setPassword(encoder.encode(user.getPassword()));
        repository.save(user);
    }

    @Override
    public User save(User user) {
        if (repository.existsByEmail(user.getEmail())) {
            throw new RuntimeException(String.format("User by email [%s] already exists", user.getEmail()));
        }
        user.setUserRole(user.getUserRole());
        user.setUserStatus(user.getUserStatus());
        user.setPassword(encoder.encode(user.getPassword()));
        return repository.save(user);
    }

}
