package com.shelly.fyyservice.mapper;

import com.shelly.fyyservice.pojo.BlogUsers;

public interface BlogUsersMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BlogUsers record);

    int insertSelective(BlogUsers record);

    BlogUsers selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BlogUsers record);

    int updateByPrimaryKeyWithBLOBs(BlogUsers record);

    int updateByPrimaryKey(BlogUsers record);
}