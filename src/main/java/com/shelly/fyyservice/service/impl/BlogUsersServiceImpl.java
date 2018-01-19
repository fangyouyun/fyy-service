package com.shelly.fyyservice.service.impl;

import com.shelly.fyyservice.mapper.BlogUsersMapper;
import com.shelly.fyyservice.service.BlogUsersService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class BlogUsersServiceImpl implements BlogUsersService {

    private Logger logger = LogManager.getLogger(this.getClass());

    @Autowired
    private BlogUsersMapper blogUsersMapper;
}
