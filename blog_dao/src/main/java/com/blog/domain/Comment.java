package com.blog.domain;

public class Comment {
    private Integer p_id;
    private String p_content;
    private Integer blog_id;
    private String user_name;
    private String user_image;

    @Override
    public String toString() {
        return "Comment{" +
                "p_id=" + p_id +
                ", p_content='" + p_content + '\'' +
                ", blog_id=" + blog_id +
                ", user_name='" + user_name + '\'' +
                ", user_image='" + user_image + '\'' +
                '}';
    }

    public Integer getP_id() {
        return p_id;
    }

    public void setP_id(Integer p_id) {
        this.p_id = p_id;
    }

    public String getP_content() {
        return p_content;
    }

    public void setP_content(String p_content) {
        this.p_content = p_content;
    }

    public Integer getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(Integer blog_id) {
        this.blog_id = blog_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_image() {
        return user_image;
    }

    public void setUser_image(String user_image) {
        this.user_image = user_image;
    }
}
