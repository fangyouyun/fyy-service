package com.shelly.fyyservice.service.impl;

import com.shelly.fyyservice.mapper.FyyUsersMapper;
import com.shelly.fyyservice.pojo.FyyUsers;
import com.shelly.fyyservice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private FyyUsersMapper usersMapper;

    @Override
    public List<FyyUsers> queryAll() {
        return usersMapper.queryAll();
    }
}
