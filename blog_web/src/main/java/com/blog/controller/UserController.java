package com.blog.controller;


import com.blog.domain.Blog;
import com.blog.domain.SendMail;
import com.blog.domain.User;
import com.blog.service.BlogService;
import com.blog.service.UserService;
import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private BlogService blogService;

    @RequestMapping("/registerPage")
    public String registerPage() {
        return "signup";
    }

    //第一次取出数据
    @RequestMapping("index")
    public String index(Model model) {
        List<Blog> list = blogService.selectAllBlog();
        List<Blog> list1 = new ArrayList<>();
        if (list.size() > 3) {
            for (int i = 0; i < 3; i++) {
                list1.add(list.get(i));
            }
            model.addAttribute("blog", list1);
        } else {
            model.addAttribute("blog", list);
        }
        return "index";
    }

    //注册
    @RequestMapping(value = "/req", method = RequestMethod.POST)

    public String register(@Valid User user, Errors errors, @RequestParam("file") MultipartFile file, Model model, HttpServletRequest req) throws IOException {
        if (errors.getErrorCount() > 0) {
            for (FieldError fieldError : errors.getFieldErrors()) {
                System.out.println(fieldError.getField() + "   " + fieldError.getDefaultMessage());
            }
            model.addAttribute("errors", errors.getFieldErrors());
            model.addAttribute("users", user);
            return "signup";
        } else {
            model.addAttribute("errors", null);
            if (req.getParameter("passwordAgain") != null && req.getParameter("passwordAgain").equals(user.getPassword())) {
                User user1 = userService.selectByUsername(user.getUsername());
                if (user1 != null) {
                    model.addAttribute("error", "该用户已经被注册");
                    return "signup";
                } else {
                    String filename = file.getOriginalFilename();
                    String substring = filename.substring(filename.lastIndexOf('.'));
                    String realPath = req.getServletContext().getRealPath("/image");
                    //随机取一个名字
                    String newFileName = String.valueOf(System.currentTimeMillis()) + substring;
                    File file1 = new File(realPath, newFileName);
                    if (!file1.getParentFile().exists()) {
                        file1.getParentFile().mkdirs();
                    }
                    file.transferTo(file1);
                    user.setImage(newFileName);
                    userService.add(user);
                    model.addAttribute("user", user);
                    return "redirect:/user/loginPage";
                }
            } else {
                model.addAttribute("users", user);
                model.addAttribute("error", "两次密码不同");
                return "signup";
            }
        }
    }

    @RequestMapping("/loginPage")
    public String loginPage() {
        return "login";
    }

    @RequestMapping("/login")
    public String login(User user, Model model, HttpServletRequest req, HttpServletResponse resp) {
        System.out.println(user);
        if (userService.login(user) != null) {
            HttpSession session = req.getSession();
            User user1 = userService.selectByUsername(user.getUsername());
            System.out.println(user1);
            session.setAttribute("userx", user1);
            model.addAttribute("user", user);
            return "redirect:/user/index";
        } else {
            model.addAttribute("error", "密码或用户名不正确");
            return "login";
        }
    }

    @RequestMapping("/forgetPage")
    public String forgetPage() {
        return "forget";
    }

    @RequestMapping("/forget")
    public String forget(Model model, HttpServletRequest req, HttpServletResponse resp) {
        String email = req.getParameter("email");
        User user = userService.selectByEmail(email);
        if (user == null) {
            model.addAttribute("error", "没有找到注册邮箱");
            return "forget";
        } else {
            SendMail sendMail = new SendMail();
            sendMail.sendMail(email, "极简博客提醒您:您的密码为:" + user.getPassword());
            return "redirect:loginPage";
        }
    }

    @RequestMapping("loginOut")
    public String loginOut(HttpServletRequest req) {
        HttpSession session = req.getSession();
        session.removeAttribute("userx");
        return "redirect:/user/index";
    }
}
