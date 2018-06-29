package com.mitrais.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SecurityController {

    @GetMapping("/login")
    public String login() {

        return "login";
    }

    @GetMapping("/403")
    public String AccessDeniedPage() {

        return "403";
    }
}
