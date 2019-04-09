package com.blog.controller;


import com.blog.domain.SendMail;
import com.blog.domain.User;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/registerPage")
    public String registerPage() {
        return "signup";
    }

    @RequestMapping("index")
    public String index() {
        return "index";
    }

    //注册
    @RequestMapping("/req")
    public String register(@Valid User user, Errors errors, Model model, HttpServletRequest req) {
        System.out.println(user);
        System.out.println(req.getParameter("passwordAgain"));
        if (errors.getErrorCount() > 1) {
            model.addAttribute("errors", errors.getFieldErrors());
            model.addAttribute("users", user);
            return "signup";
        } else {
            model.addAttribute("errors", null);
            if (req.getParameter("passwordAgain") != null && req.getParameter("passwordAgain").equals(user.getPassword())) {
                userService.add(user);
                model.addAttribute("user", user);
                return "login";
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
            model.addAttribute("user", user);
            if (req.getParameter("remember") != null) {
                Cookie cookie = new Cookie("username", user.getUsername());
                cookie.setMaxAge(60 * 60 * 24 * 7);
                Cookie cookie1 = new Cookie("password", user.getPassword());
                cookie1.setMaxAge(60 * 60 * 24 * 7);
                resp.addCookie(cookie);
                resp.addCookie(cookie1);
            } else {
                Cookie[] cookies = req.getCookies();
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("username")) {
                        cookie.setMaxAge(0);
                        resp.addCookie(cookie);
                    } else if (cookie.getName().equals("password")) {
                        cookie.setMaxAge(0);
                        resp.addCookie(cookie);
                    }
                }
            }
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
}
