package com.yy.mvc.service;


import com.yy.annotation.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;

    public UserDao getInstance(){
        return userDao;
    }
}
