package com.blog.domain;

public class HotBean {
    private String blog_image;
    private Integer blog_id;
    private String blog_title;
    private String blog_min;
    private Integer blog_like;
    private Integer Blog_comm;
    private String blog_time;


    public HotBean(String blog_image, Integer blog_id, String blog_title, String blog_min, Integer blog_like, Integer blog_comm, String blog_time) {
        this.blog_image = blog_image;
        this.blog_id = blog_id;
        this.blog_title = blog_title;
        this.blog_min = blog_min;
        this.blog_like = blog_like;
        Blog_comm = blog_comm;
        this.blog_time = blog_time;
    }

    @Override
    public String toString() {
        return "HotBean{" +
                "blog_image='" + blog_image + '\'' +
                ", blog_id=" + blog_id +
                ", blog_title='" + blog_title + '\'' +
                ", blog_min='" + blog_min + '\'' +
                ", blog_like=" + blog_like +
                ", Blog_comm=" + Blog_comm +
                '}';
    }

    public String getBlog_image() {
        return blog_image;
    }

    public void setBlog_image(String blog_image) {
        this.blog_image = blog_image;
    }

    public Integer getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(Integer blog_id) {
        this.blog_id = blog_id;
    }

    public String getBlog_title() {
        return blog_title;
    }

    public void setBlog_title(String blog_title) {
        this.blog_title = blog_title;
    }

    public String getBlog_min() {
        return blog_min;
    }

    public void setBlog_min(String blog_min) {
        this.blog_min = blog_min;
    }

    public Integer getBlog_like() {
        return blog_like;
    }

    public void setBlog_like(Integer blog_like) {
        this.blog_like = blog_like;
    }

    public Integer getBlog_comm() {
        return Blog_comm;
    }

    public void setBlog_comm(Integer blog_comm) {
        Blog_comm = blog_comm;
    }

    public String getBlog_time() {
        return blog_time;
    }

    public void setBlog_time(String blog_time) {
        this.blog_time = blog_time;
    }
}
