package com.mitrais.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AnotherController {

    @GetMapping("/another")
    public String anotherMenu() {
        return "another";
    }
}
