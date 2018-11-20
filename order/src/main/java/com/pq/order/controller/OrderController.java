package com.pq.order.controller;

import com.pq.order.service.impl.OrderServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderController {

    @Autowired
    OrderServiceImpl orderService;

    @RequestMapping("/index")
    public String testGet() {

        return "qiang";

    }

    @RequestMapping(value = "/testPost", method = RequestMethod.POST)
    public String testPost(@RequestParam(value = "name", defaultValue = "World") String name) {

        return "test" + name;
    }


}
