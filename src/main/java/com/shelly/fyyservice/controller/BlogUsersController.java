package com.shelly.fyyservice.controller;

import com.shelly.fyyservice.service.BlogUsersService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("users")
public class BlogUsersController {
    private Logger logger = LogManager.getLogger(this.getClass());

    @Autowired
    private BlogUsersService blogUsersService;



}
