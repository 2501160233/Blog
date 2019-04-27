package com.blog.service.impl;

import com.blog.dao.BlogDao;
import com.blog.domain.Blog;
import com.blog.service.BlogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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

    public PageInfo getAll(int pageNumber, int pageSize) {
        PageHelper.startPage(pageNumber, pageSize);
        List<Blog> blog = blogDao.selectAll();
        PageInfo pageInfo = new PageInfo(blog);
        return pageInfo;
    }

    public void deleteByBlogId(Integer id) {
        blogDao.deleteByBlogId(id);
    }

}
