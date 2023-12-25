package com.Glory.service.impl;

import com.Glory.dao.PostDao;
import com.Glory.po.Post;
import com.Glory.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PostServiceImpl implements PostService {
    @Autowired
    private PostDao postDao;

    @Override
    public void sendPost(Post post) {
        this.postDao.sendPost(post);
    }

    @Override
    public void editPost(Post post) {
        List<Post> list = postDao.findOnePost(post.getPostId());
        Post UpdatePost = list.get(0);
        UpdatePost.setTitle(post.getTitle());
        UpdatePost.setContent(post.getContent());
        this.postDao.editPost(post);
        System.out.println("修改成功");
    }

    @Override
    public void deletePost(Integer postId) {
        this.postDao.deletePost(postId);
        System.out.println("删除帖子成功");
    }

    @Override
    public List<Post> findAllPost() {
        List<Post> result = this.postDao.findAllPost();
        return result;
    }

    @Override
    public List<Post> findMyPost(Integer userId) {
        List<Post> result = this.postDao.findMyPost(userId);
        return result;
    }

    @Override
    public List<Post> findOnePost(Integer postId) {
        List<Post> result = this.postDao.findOnePost(postId);
        return result;
    }

    @Override
    public List<Post> findAllPostEvenPost() {
        List<Post> result = this.postDao.findAllPostEvenHidden();
        return result;
    }
}
