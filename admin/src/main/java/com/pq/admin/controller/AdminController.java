package com.pq.admin.controller;

import com.pq.admin.service.impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AdminController {

    @Autowired
    ProductServiceImpl productService;


    @RequestMapping("/login")
    public void login(){

    }

    @RequestMapping("/index")
    public String hello(@RequestParam(value = "name", required = false, defaultValue = "springboot-thymeleaf") String name) {

        return "index";
    }

    /**
     *  获取用户列表
     *    处理 "/users" 的 GET 请求，用来获取用户列表
     *    通过 @RequestParam 传递参数，进一步实现条件查询或者分页查询
     */
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public String getUserList(ModelMap map) {
        map.addAttribute("name", "test");
        return "index";
    }


}
