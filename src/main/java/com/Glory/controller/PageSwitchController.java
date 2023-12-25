package com.Glory.controller;

import com.Glory.po.Announcement;
import com.Glory.po.Post;
import com.Glory.po.User;
import com.Glory.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class PageSwitchController {
    @Autowired
    private PostServiceImpl postService;

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private CommentServiceImpl commentService;

    @Autowired
    private AdminServiceImpl adminService;

    @Autowired
    private AnnouncementServiceImpl announcementService;

    /*响应登录/注册和登录成功后进入论坛页面的请求*/
    @RequestMapping("/AfterLogin")
    public String toAfterLogin(){
        return "AfterLogin";
    }

    /*论坛链接跳转页面响应请求*/
    @RequestMapping("/AfterLoginJob")
    public String toAfterLoginJob(){
        return "AfterLoginJob";
    }

    @RequestMapping("/AfterLoginDark Night")
    public String toAfterLoginDarkNight(){
        return "AfterLoginDark Night";
    }

    @RequestMapping("/AfterLoginFight")
    public String toAfterLoginFight(){
        return "AfterLoginFight";
    }

    @RequestMapping("/AfterLoginGun")
    public String toAfterLoginGun(){
        return "AfterLoginGun";
    }

    @RequestMapping("/AfterLoginSacrament")
    public String toAfterLoginSacrament(){
        return "AfterLoginSacrament";
    }

    @RequestMapping("/AfterLoginSword")
    public String toAfterLoginSword(){
        return "AfterLoginSword";
    }

    @RequestMapping("/AfterAbout")
    public String toAfterAbout(){ return "AfterAbout"; }

    /*响应论坛页面并渲染视图*/
    @RequestMapping("/Forum")
    public String toForumPage(Model model){
        List<Post> postList = postService.findAllPost();
        List<Announcement> announcementList = announcementService.findExistAnnouncement();
        model.addAttribute("PostList", postList);
        model.addAttribute("AnnouncementList", announcementList);
        return "Forum";
    }
}
