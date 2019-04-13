package com.blog.dao;

import com.blog.domain.Blog;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BlogDao {
    int insertBlog(Blog blog);

    List<Blog> selectAllBlog();


    List<Blog> selectByUserId(@Param("id") Integer id);

    Blog selectByBlogId(Integer blog_id);
}
