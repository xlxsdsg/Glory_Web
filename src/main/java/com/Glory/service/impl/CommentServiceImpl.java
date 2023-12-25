package com.Glory.service.impl;

import com.Glory.dao.CommentDao;
import com.Glory.po.Comment;
import com.Glory.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public List<Comment> findCommentByPostId(Integer postId) {
        List<Comment> result = this.commentDao.findCommentByPostId(postId);
        System.out.println("成功找到查找postId:"+postId+"的评论");
        return result;
    }

    @Override
    public void sendComment(Comment comment) {
        Date date = new Date();
        java.sql.Date time = new java.sql.Date(date.getTime());
        comment.setTime(time);
        this.commentDao.sendComment(comment);
        System.out.println("发布评论成功");
    }

    @Override
    public void deleteCommentByPostId(Integer postId) {
        this.commentDao.deleteCommentByPostId(postId);
        System.out.println("成功删除postId="+postId+"的评论");
    }
}
