package com.blog.service.impl;

import com.blog.dao.UserDao;
import com.blog.domain.User;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    public int add(User record) {

        return userDao.insert(record);
    }

    public User login(User user) {
        User user1 = userDao.login(user);
        return user1;
    }

    public User selectByEmail(String email) {
        return userDao.selectByEmail(email);
    }

    public User selectByUsername(String username) {
        return userDao.selectByUsername(username);
    }

    public List<User> selectAllUser() {
        return userDao.selectAllUser();
    }
}
