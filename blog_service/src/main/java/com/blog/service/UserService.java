package com.blog.service;

import com.blog.domain.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserService {
    int add(User record);
    User login(User user);
    User selectByEmail(String email);

    User selectByUsername(String username);

    List<User> selectAllUser();
}
