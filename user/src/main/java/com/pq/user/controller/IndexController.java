package com.pq.user.controller;


import com.pq.user.entity.TUser;
import com.pq.user.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {

    @Autowired
    UserServiceImpl userService;

    @RequestMapping("/index")
    public String testGet() {
        TUser user = new TUser();
        user.setName("ccc");
        user.setPassword("noii");
        user.setPhone("100100001");
        userService.insertUser(user);
        return "qiang";

    }

    @RequestMapping(value = "/testPost", method = RequestMethod.POST)
    public String testPost(@RequestParam(value = "name", defaultValue = "World") String name) {

        return "test" + name;
    }


}
