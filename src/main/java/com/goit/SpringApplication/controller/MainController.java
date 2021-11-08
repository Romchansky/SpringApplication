package com.goit.SpringApplication.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/")

public class MainController {

    @GetMapping
    public String doGet(){
        return "index";
    }

    @PostMapping
    public String doPost(){
        return"index";
    }

    @GetMapping("login")
    public String login(Model model, String err, String logout){
        if(err != null) model.addAttribute("error", "Username is not valid");
        if(logout != null) model.addAttribute("message", "You logout");
        return "login";
    }
}
