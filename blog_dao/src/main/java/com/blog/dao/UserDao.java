package com.blog.dao;

import com.blog.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    int insert(User record);

    User login(User user);

    User selectByEmail(String email);

    User selectByUsername(String username);

    List<User> selectAllUser();

    User selectByAccount(String username);

    List<User> selectAll();

    User selectByUserId(Integer id);

    void updateByUser(@Param("email") String email, @Param("username") String username, @Param("password") String password, @Param("type") Integer type, @Param("id") Integer id);

    void deleteByUserId(@Param("id") Integer id);
}
