package com.blog.dao;

import com.blog.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    int insert(User record);

    User login(User user);

    User selectByEmail(String email);

    User selectByUsername(String username);
}
