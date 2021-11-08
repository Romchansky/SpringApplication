package com.goit.SpringApplication.autorization;

import com.goit.SpringApplication.entity.User;
import com.goit.SpringApplication.entity.UserStatus;
import com.goit.SpringApplication.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


import java.util.Collection;
import java.util.Collections;


@Service(value = "userServiceDetails")
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserRepository repository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
       final User user = repository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException(String.format("user with name %s not exists", email)));
        return new UserDetails() {

            private static final long serialVersionUID = -738565735037431772L;

            @Override
            public Collection<? extends GrantedAuthority> getAuthorities() {
                return Collections.singletonList(new SimpleGrantedAuthority(user.getUserRole().toString()));
            }

            @Override
            public String getPassword() {
                return user.getPassword();
            }

            @Override
            public String getUsername() {
                return user.getEmail();
            }

            @Override
            public boolean isAccountNonExpired() {
                return true;
            }

            @Override
            public boolean isAccountNonLocked() {
                return true;
            }

            @Override
            public boolean isCredentialsNonExpired() {
                return true;
            }

            @Override
            public boolean isEnabled() {
                return user.getUserStatus() == UserStatus.ACTIVE;
            }
        };
    }
}
