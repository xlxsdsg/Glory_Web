package com.Glory.service;

import com.Glory.po.Comment;

import java.util.List;

public interface CommentService {
    public List<Comment> findCommentByPostId(Integer postId);
    public void sendComment(Comment comment);
    public void deleteCommentByPostId(Integer postId);
}
