package com.Glory.po;

import java.sql.Date;

public class Post {
    private Integer postId; /*帖子id*/
    private Integer userId; /*帖主id*/
    private String username; /*贴主昵称*/
    private String content; /*内容*/
    private Integer exist; /*是否隐藏*/
    private Date time; /*发布时间*/
    private String title; /*帖子主题*/

    public Post() {
    }

    public Post(Integer postId, Integer userId, String username, String content, Integer exist, Date time, String title) {
        this.postId = postId;
        this.userId = userId;
        this.username = username;
        this.content = content;
        this.exist = exist;
        this.time = time;
        this.title = title;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Post{" +
                "postId=" + postId +
                ", userId=" + userId +
                ", username='" + username + '\'' +
                ", content='" + content + '\'' +
                ", exist=" + exist +
                ", time=" + time +
                ", title='" + title + '\'' +
                '}';
    }
}
