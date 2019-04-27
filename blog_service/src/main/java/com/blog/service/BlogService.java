package com.blog.service;

import com.blog.domain.Blog;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BlogService {
    int save(Blog blog);

    List<Blog> selectAllBlog();

    List<Blog> selectByUserId(Integer id);

    Blog selectByBlogId(Integer blog_id);

    PageInfo getAll(int pageNumber, int pageSize);

    void deleteByBlogId(Integer id);
}
