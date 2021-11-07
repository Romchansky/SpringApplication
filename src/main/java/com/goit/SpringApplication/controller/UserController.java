package com.goit.SpringApplication.controller;

import com.goit.SpringApplication.entity.User;
import com.goit.SpringApplication.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.Optional;

@Controller
@RequestMapping(path = "/user")
@RequiredArgsConstructor
public class UserController {

    private UserService userService;

    @GetMapping("/registration")
    public String registration(Model model) {
        return "registration";
    }

    @PostMapping("registration")
    public String registrationUser(@Valid User user) {
        userService.register(user);
        return "redirect:/";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping(path = "/findAllUsers")
    public ModelAndView showAllUsers(ModelAndView model) {
        model.addObject("users", userService.findAll());
        model.setViewName("findAllUsers");
        return model;
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping(path = "/delete")
    public RedirectView delete(@RequestParam("id") Long id) {
        userService.deleteById(id);
        return new RedirectView("/user/findAllUsers");
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping(path = "/findUserById")
    public ModelAndView findUserById(@RequestParam("id") Long id, ModelAndView model) {
        Optional<User> user = userService.findById(id);
        model.addObject("user", user);
        model.setViewName("findUserById");
        return model;
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping(path = "/form/save")
    public RedirectView save(User user) {
        userService.save(user);
        return new RedirectView("/user/findAllUsers");
    }

    @ModelAttribute("userForm")
    public User defaultUser() {
        return new User();
    }
}
