package com.Glory.dao;

import com.Glory.po.Post;

import java.util.List;

public interface PostDao {
    public void sendPost(Post post);
    public void editPost(Post post);
    public void deletePost(Integer postId);
    public List<Post> findAllPost();
    public List<Post> findMyPost(Integer userId);
    public List<Post> findOnePost(Integer postId);
    public List<Post> findAllPostEvenHidden();
}