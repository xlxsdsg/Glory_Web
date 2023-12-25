package com.Glory.controller;

import com.Glory.po.Comment;
import com.Glory.po.User;
import com.Glory.service.impl.CommentServiceImpl;
import com.Glory.service.impl.PostServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
public class CommentController {

    @Autowired
    private CommentServiceImpl commentService;

    @Autowired
    private PostServiceImpl postService;

    @PostMapping("/sendComment")
    public String sendComment(Comment comment, HttpSession session){
        User user = (User) session.getAttribute("USER_SESSION");
        comment.setUsername(user.getUsername());
        comment.setUserId(user.getUserid());
        commentService.sendComment(comment);
        ModelAndView mav = new ModelAndView("PostPage");
        mav.addObject("PostList", postService.findOnePost(comment.getPostId()));
        String postId = String.valueOf(comment.getPostId());
        return "redirect:/PostPage?postId="+postId;
    }

}
