package com.shelly.fyyservice.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/welcom")
public class WelcomController {

    private Logger logger = LogManager.getLogger(this.getClass());

    @RequestMapping("/list")
    public String list(Model model){
        model.addAttribute("key","fangyouyun");
        logger.info("welcon:{}",model.toString());
        return "/welcom";
    }
}
