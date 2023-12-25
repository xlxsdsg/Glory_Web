package com.Glory.po;

import java.util.Date;

public class Comment {
    private Integer commentId; /*评论id*/
    private Integer postId; /*帖子id*/
    private Integer userId; /*评论用户的id*/
    private String content; /*评论的内容*/
    private Integer exist; /*是否隐藏*/
    private Date time; /*发布时间*/
    private String username; /*评论主*/

    public Comment() {
    }

    public Comment(Integer commentId, Integer postId, Integer userId, String content, Integer exist, Date time, String username) {
        this.commentId = commentId;
        this.postId = postId;
        this.userId = userId;
        this.content = content;
        this.exist = exist;
        this.time = time;
        this.username = username;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getExist() {
        return exist;
    }

    public void setExist(Integer exist) {
        this.exist = exist;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentId=" + commentId +
                ", postId=" + postId +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                ", exist=" + exist +
                ", time=" + time +
                ", username='" + username + '\'' +
                '}';
    }
}
