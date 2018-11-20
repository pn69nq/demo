package com.pq.user.service.impl;

import com.pq.user.entity.TUser;
import com.pq.user.mapper.TUserMapper;
import com.pq.user.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private TUserMapper userMapper;

    @Override
    public void insertUser(TUser user) {
        userMapper.insert(user);
    }
}