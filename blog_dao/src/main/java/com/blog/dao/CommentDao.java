package com.blog.dao;

import com.blog.domain.Comment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentDao {
    //统计所有评论
    List<Comment> selectByBlogId(@Param("id") Integer id);

    void insertComment(@Param("id") Integer id, @Param("p_content") String p_content, @Param("username") String username, @Param("image") String image);

    //统计数量
    Integer selectById(Integer blog_id);
}
