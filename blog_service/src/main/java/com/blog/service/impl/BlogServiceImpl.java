package com.blog.service.impl;

import com.blog.dao.BlogDao;
import com.blog.domain.Blog;
import com.blog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogServiceImpl implements BlogService {
    @Autowired
    private BlogDao blogDao;

    public int save(Blog blog) {
        return blogDao.insertBlog(blog);
    }

    public List<Blog> selectAllBlog() {
        return blogDao.selectAllBlog();
    }

    public List<Blog> selectByUserId(Integer id) {
        return blogDao.selectByUserId(id);
    }

    public Blog selectByBlogId(Integer blog_id) {
        return blogDao.selectByBlogId(blog_id);
    }

}
