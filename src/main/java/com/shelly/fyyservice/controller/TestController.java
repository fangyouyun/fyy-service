package com.shelly.fyyservice.controller;

import com.shelly.fyyservice.pojo.FyyUsers;
import com.shelly.fyyservice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("test")
public class TestController {

    @Autowired
    private UserService userService;

    @RequestMapping("hello")
    public String getTest(){
        System.out.println("test spring boot !");
        return "test hello OK";
    }

    @RequestMapping("all")
    public List<FyyUsers> queryAll(){
        List<FyyUsers> fyyUsers = userService.queryAll();
        System.out.println(fyyUsers);
        return fyyUsers;
    }
}
