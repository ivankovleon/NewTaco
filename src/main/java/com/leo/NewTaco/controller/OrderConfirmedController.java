package com.leo.NewTaco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderConfirmedController {

    @GetMapping("/orderConfirmed")
    public String orderConfirmed() {

        return "orderConfirmed";
    }
}
