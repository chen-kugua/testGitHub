package com.diancan.controller;

import com.diancan.service.HelloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {
    @Autowired
    HelloService helloService;


    @RequestMapping("/hello")
    @ResponseBody
    public String hello() {
        return "hello,world";
    }

    @RequestMapping("/hello2")
    public String hello2() {
        helloService.hello();
        return "success";
    }


}