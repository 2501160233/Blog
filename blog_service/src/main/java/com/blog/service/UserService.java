package com.blog.service;

import com.blog.domain.User;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserService {
    int add(User record);
    User login(User user);
    User selectByEmail(String email);

    User selectByUsername(String username);

    List<User> selectAllUser();

    PageInfo getAll(int pageNumber, int pageSize);

    User selectByUserId(Integer id);

    void updateByUserId(String email, String username, String password, Integer type, Integer id);

    void deleteByUserId(Integer id);

    User selectById(Integer id);
}
