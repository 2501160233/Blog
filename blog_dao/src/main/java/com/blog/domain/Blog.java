package com.blog.domain;

public class Blog {
    private Integer blog_id;
    private String blog_title;
    private String blog_content;
    private String blog_min;
    private String blog_class;
    private String image;
    private Integer user_id;
    private Integer blog_like;

    @Override
    public String toString() {
        return "Blog{" +
                "blog_id=" + blog_id +
                ", blog_title='" + blog_title + '\'' +
                ", blog_content='" + blog_content + '\'' +
                ", blog_min='" + blog_min + '\'' +
                ", blog_class='" + blog_class + '\'' +
                ", image='" + image + '\'' +
                ", user_id=" + user_id +
                ", blog_like=" + blog_like +
                '}';
    }

    public Integer getBlog_like() {
        return blog_like;
    }

    public void setBlog_like(Integer blog_like) {
        this.blog_like = blog_like;
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

    public String getBlog_content() {
        return blog_content;
    }

    public void setBlog_content(String blog_content) {
        this.blog_content = blog_content;
    }

    public String getBlog_min() {
        return blog_min;
    }

    public void setBlog_min(String blog_min) {
        this.blog_min = blog_min;
    }

    public String getBlog_class() {
        return blog_class;
    }

    public void setBlog_class(String blog_class) {
        this.blog_class = blog_class;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }
}
