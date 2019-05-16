package com.blog.service;

import com.blog.domain.Comment;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentService {


    List<Comment> selectById(Integer id);

    void insertComment(Integer id, String p_content, String username, String image);

    Integer selectByBLogId(Integer blog_id);
}
