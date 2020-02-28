package com.diancan.controller;

import com.diancan.entity.Good;
import com.diancan.entity.Order;
import com.diancan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/book/{id}")
    public String book(@PathVariable("id") int id, Model model) {
        List<Good> goods = userService.queryAllGoods();
        model.addAttribute("id", id);
        model.addAttribute("goods", goods);
        return "book";
    }
    @RequestMapping("/check")
    @ResponseBody
    public String check(@RequestBody Order order){
        System.out.println(order.toString());
        return "success";
    }
}
