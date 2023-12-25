package com.Glory.controller;

import com.Glory.passwordTool.SHA256;
import com.Glory.po.User;
import com.Glory.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;


@Controller
public class LoginRegisterController {

    /*spring自动装配userDao接口*/
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("/Register")
    public String towardRegister(){ return "Register";}

    @GetMapping("/register")
    public String toRegister(){ return "Register";}

    @RequestMapping("/Login")
    public String towardLogin(){ return "Login";}

    @GetMapping("/login")
    public String toLogin(){
        return "Login";
    }

    @PostMapping("/login")
    public String login(User user, HttpSession session, HttpServletResponse response){
        System.out.println("login Controller used..");
        /*执行验证并返回结果*/
        Integer option = userService.loginCheck(user);
        if (option == 1 || option == 2){
            User user1 = userService.findUserByEmail(user.getEmail());
            session.setAttribute("USER_SESSION", user1);
            if (option == 1)
                return "redirect:Administrator";
            else
                return "redirect:AfterLogin";
        }
        try{
            /* 配置网页弹窗需要的response*/
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.flush();
            /*根据Service层返回的数字码返回对应的网页*/
            if (option == 3)
                out.print("<script language='javascript'>alert('您的账号已被冻结，请联系管理员');window.location.href='Login';</script>");
            if (option == 4)
                out.print("<script language='javascript'>alert('密码不正确');window.location.href='Login';</script>");
            if (option == 5)
                out.print("<script language='javascript'>alert('账号不存在');window.location.href='Login';</script>");
            out.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return "Login";
    }

    /*响应注册按钮的post表单提交请求，进行注册事务*/
    @PostMapping("/register")
    public String register(User user, HttpSession session, HttpServletResponse response) {
        /*验证注册的用户名是否已存在*/
        Integer option = userService.registerCheck(user);
        if (option == 1) { /*存在则注册失败，返回注册页面*/
            try{
                response.setCharacterEncoding("UTF-8");
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.flush();
                out.print("<script language='javascript'>alert('邮箱已存在');window.location.href='Register';</script>");
                out.close();
            }
            catch (Exception e){
                e.printStackTrace();
            }
            return "Register";
        }
        else { /*注册成功，则将密码加密后，数据纳入数据库,返回登录页面*/
            userService.register(user);
            session.setAttribute("USER_SESSION", user);
            System.out.println("注册成功");
            return "redirect:Login";
        }
    }

    /*退出登录按钮响应请求*/
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        System.out.println("用户登出");
        return "redirect:Login";
    }
}

