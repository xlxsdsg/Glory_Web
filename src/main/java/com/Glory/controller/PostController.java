package com.Glory.controller;

/*import com.Glory.dao.CommentDao;*/
import com.Glory.dao.CommentDao;
import com.Glory.po.Comment;
import com.Glory.po.Post;
import com.Glory.po.User;
import com.Glory.service.impl.CommentServiceImpl;
import com.Glory.service.impl.PostServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class PostController {
    /*spring自动装配postDao接口*/
    @Autowired
    private PostServiceImpl postService;
    @Autowired
    private CommentServiceImpl commentService;

    /*响应帖子的发送和删除按钮请求，返回对应功能的页面*/
    @RequestMapping("/toSend")
    public String toSendPage(){ return "toSend"; }

    /*点击按钮响应到对应帖子的编辑页面*/
    @RequestMapping("/toEdit")
    public ModelAndView toEditPost(HttpServletRequest request){
        ModelAndView mav = new ModelAndView("toEdit");
        Integer postId = Integer.parseInt(request.getParameter("postId"));
        mav.addObject("OnePost",postService.findOnePost(postId));
        System.out.println("进入帖子修改页面");
        return mav;
    }

    /*点击帖子页面里的某个帖子标题时，通过传入postId参数，跳转到对应帖子的详细页面前，调用控制器来给视图填充数据*/
    @GetMapping("/PostPage")
    public ModelAndView toExact(@RequestParam("postId")Integer postId){
        ModelAndView mav = new ModelAndView("PostPage");
        List<Post> postList = postService.findOnePost(postId);
        List<Comment> commentList = commentService.findCommentByPostId(postId);
        /*填充帖子和评论区*/
        mav.addObject("PostList", postList);
        mav.addObject("CommentList", commentList);
        return mav;
    }

    /*响应用户页面“我的帖子”修改帖子的请求*/
    @PostMapping("/UserPageToEditPost")
    public String UserPageToEditPost(Post post){
        System.out.println("UserPage post editing..");
        postService.editPost(post);
        System.out.println("用户页面修改帖子成功");
        return "redirect:UserPage";
    }

    /*响应删除帖子请求*/
    @GetMapping("/deletePost")
    public String DeletePost(@RequestParam("postId")Integer postId){
        /*先删除帖子的评论，再删除帖子, (都把exist属性标记为0，及不可见)*/
        commentService.deleteCommentByPostId(postId);
        postService.deletePost(postId);
        return "redirect:UserPage";
    }

    /*响应发布帖子请求*/
    @PostMapping("/sendPost")
    public String sendPost(Post post, HttpSession session){
        Date now = new Date();
        java.sql.Date time = new java.sql.Date(now.getTime());
        User user = (User) session.getAttribute("USER_SESSION");
        post.setTime(time);
        post.setUserId(user.getUserid());
        post.setUsername(user.getUsername());
        post.setExist(1);
        postService.sendPost(post);
        return "redirect:Forum";
    }

}
