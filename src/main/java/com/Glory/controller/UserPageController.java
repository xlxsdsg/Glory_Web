package com.Glory.controller;

import com.Glory.po.Post;
import com.Glory.po.User;
import com.Glory.service.impl.PostServiceImpl;
import com.Glory.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserPageController {

    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private PostServiceImpl postService;

    @PostMapping("/EditUserInfo")
    public ModelAndView EditUserInfo(User EditUser, HttpSession session){
        User user = (User) session.getAttribute("USER_SESSION");
        String email = user.getEmail();
        User UpdateUser = userService.findUserByEmail(email);
        /*修改信息*/
        UpdateUser.setUsername(EditUser.getUsername());
        UpdateUser.setGender(EditUser.getGender());
        UpdateUser.setSignature(EditUser.getSignature());
        /*数据库信息修改*/
        userService.userEdit(UpdateUser);
        session.setAttribute("USER_SESSION",UpdateUser);
        ModelAndView mav = new ModelAndView("UserPage");
        mav.addObject("PostList", postService.findMyPost(user.getUserid()));
        return mav;
    }

    @RequestMapping("/UserPage")
    public ModelAndView toUserPage(HttpSession session){
        User user = (User) session.getAttribute("USER_SESSION");
        System.out.println(user.toString());
        ModelAndView mav = new ModelAndView("UserPage");
        List<Post> postList = postService.findMyPost(user.getUserid());
        mav.addObject("PostList", postList);
        return mav;
    }

}
