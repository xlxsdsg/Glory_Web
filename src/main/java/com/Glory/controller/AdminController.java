package com.Glory.controller;

import com.Glory.dao.AnnouncementDao;
import com.Glory.po.Announcement;
import com.Glory.po.Post;
import com.Glory.po.User;
import com.Glory.service.AdminService;
import com.Glory.service.impl.PostServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @Autowired
    private AnnouncementDao announcementDao;

    @Autowired
    private PostServiceImpl postService;

    @RequestMapping("Administrator")
    public ModelAndView toAdmin(){
        ModelAndView mav = new ModelAndView("UserControl");
        mav.addObject("UserList", adminService.findAllUser());
        return mav;
    }

    @GetMapping("/unfreezeUserByUserId")
    public String unfreezeUser(@RequestParam("userId")Integer userId, Model model){
        adminService.unfreezeUserByUserId(userId);
        System.out.println("解冻用户成功");
        List<User> userList = adminService.findAllUser();
        model.addAttribute("UserList", userList);
        return "redirect:UserControl";
    }

    @GetMapping("/frostUserByUserId")
    public String frostUser(@RequestParam("userId")Integer userId, Model model){
        adminService.frostUserByUserId(userId);
        System.out.println("冻结用户成功");
        List<User> userList = adminService.findAllUser();
        model.addAttribute("UserList", userList);
        return "redirect:UserControl";
    }

    @GetMapping("/deleteUserByUserId")
    public String deleteUserById(@RequestParam("userId")Integer userId, Model model){
        adminService.deleteUserByUserId(userId);
        List<User> userList = adminService.findAllUser();
        model.addAttribute("UserList", userList);
        return "redirect:UserControl";
    }

    /*响应管理员跳转用户管理页面请求，并渲染视图*/
    @RequestMapping("/UserControl")
    public ModelAndView tpUserControl(){
        ModelAndView mav = new ModelAndView("UserControl");
        List<User> userList = adminService.findAllUser();
        mav.addObject("UserList", userList);
        return mav;
    }

    @RequestMapping("/PostControl")
    public ModelAndView tpPostControl(){
        ModelAndView mav = new ModelAndView("PostControl");
        List<Post> postList = postService.findAllPostEvenPost();
        mav.addObject("PostList", postList);
        return mav;
    }

    @GetMapping("hiddenPostByRoot")
    public String hiddenPostByRoot(@RequestParam("postId")Integer postId, Model model){
        adminService.hiddenPostByRoot(postId);
        model.addAttribute("PostList", postService.findAllPostEvenPost());
        return "redirect:PostControl";
    }

    @GetMapping("deletePostByRoot")
    public String deletePostByRoot(@RequestParam("postId")Integer postId, Model model){
        adminService.deletePostByRoot(postId);
        model.addAttribute("PostList", postService.findAllPostEvenPost());
        return "redirect:PostControl";
    }
}
