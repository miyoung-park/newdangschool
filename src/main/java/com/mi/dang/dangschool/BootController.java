package com.mi.dang.dangschool;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BootController {


    @GetMapping("/hello")
    public String returnResult(){
        String hello = "hello";
        return hello;
    }
}
