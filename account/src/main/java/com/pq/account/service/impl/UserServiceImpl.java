package com.pq.account.service.impl;

import com.pq.account.entity.TUser;
import com.pq.account.mapper.TUserMapper;
import com.pq.account.service.IUserService;
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