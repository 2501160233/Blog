package com.blog.controller;

import com.blog.domain.Blog;
import com.blog.domain.User;
import com.blog.service.BlogService;
import org.omg.CORBA.INTERNAL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/blog")
public class BlogController {
    @Autowired
    private BlogService blogService;

    @RequestMapping("write")
    public String write(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("userx") == null) {
            return "redirect:/user/loginPage";
        } else {
            return "addBlog";
        }
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(Blog blog, @RequestParam(value = "file", required = false) MultipartFile file,
                       Model model, HttpServletRequest req) throws IOException {
        System.out.println(blog);
        if (blog.getBlog_title().length() == 0 || blog.getBlog_min().length() == 0) {
            model.addAttribute("Error", "请添加博客");
            return "addBlog";
        } else {
            HttpSession session = req.getSession();
            User userx = (User) session.getAttribute("userx");
            Integer id = userx.getId();
            String filename = file.getOriginalFilename();
            String substring = "";
            if (filename.length() != 0) {
                substring = filename.substring(filename.lastIndexOf('.'));
            }
            String realPath = req.getServletContext().getRealPath("/image");
            //随机取一个名字
            String newFileName = String.valueOf(System.currentTimeMillis()) + substring;
            File file1 = new File(realPath, newFileName);
            if (!file1.getParentFile().exists()) {
                file1.getParentFile().mkdirs();
            }
            file.transferTo(file1);
            blog.setImage(newFileName);
            blog.setUser_id(id);
            blogService.save(blog);
            model.addAttribute("blog", blog);
            return "redirect:/user/index";
        }
    }

    @RequestMapping("/content/{blog_id}")
    public String content(@PathVariable("blog_id") Integer blog_id, Model model) {
        Blog blog = blogService.selectByBlogId(blog_id);
        model.addAttribute("myBlog", blog);
        return "singleBlog";
    }

    @RequestMapping("myBlogs")
    public String myBlog(HttpServletRequest request, Model model, Blog blog) {
        HttpSession session = request.getSession();
        User userx = (User) session.getAttribute("userx");
        if (userx == null) {
            return "redirect:/user/loginPage";
        } else {
            List<Blog> list = blogService.selectByUserId(userx.getId());
            model.addAttribute("BlogList", list);
            System.out.println(list);
            return "myBlog";
        }
    }

    @RequestMapping("/hot")
    public String hot() {
        return "hotBlog";
    }

    @RequestMapping("select")
    public String select(Model model) {
        List<Blog> list = blogService.selectAllBlog();
        List<Blog> list1 = new ArrayList<>();
        List<Blog> list2 = new ArrayList<>();
        int[] a = new int[3];
        for (int i = 0; i < 3; i++) {
            a[i] = (int) (Math.random() * (list.size() - 1) + 1);
        }
        if (list.size() > 10) {
            for (int i = 0; i < 3; i++) {
                list1.add(list.get(a[i]));
            }
            model.addAttribute("Blog1", list1);
        } else {
            if (list.size() > 3) {
                for (int i = 0; i < 3; i++) {
                    list2.add(list.get(i));
                }
                model.addAttribute("Blog1", list2);
            } else {
                model.addAttribute("Blog1", list);
            }
        }
        return "index";
    }
}
