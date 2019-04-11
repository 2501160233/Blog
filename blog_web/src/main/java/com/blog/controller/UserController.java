package com.blog.controller;


import com.blog.domain.SendMail;
import com.blog.domain.User;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
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
    public String index(HttpServletRequest req) {
        HttpSession session = req.getSession();
        session.getAttribute("userx");
        return "index";
    }

    //注册
    @RequestMapping(value = "/req", method = RequestMethod.POST)

    public String register(@RequestParam("image") MultipartFile file, @Valid User user, Errors errors, Model model, HttpServletRequest req) throws IOException {
        System.out.println(user);
        System.out.println(req.getParameter("passwordAgain"));
        if (errors.getErrorCount() > 1) {
            model.addAttribute("errors", errors.getFieldErrors());
            model.addAttribute("users", user);
            return "signup";
        } else {
            model.addAttribute("errors", null);
            if (req.getParameter("passwordAgain") != null && req.getParameter("passwordAgain").equals(user.getPassword())) {
                /*
                 * 处理文件上传
                 * 获取文件上传名字
                 * */
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