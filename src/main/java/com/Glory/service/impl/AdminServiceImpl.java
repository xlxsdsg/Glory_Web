package com.Glory.service.impl;

import com.Glory.dao.AdminDao;
import com.Glory.po.User;
import com.Glory.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    @Override
    public void frostUserByUserId(Integer userId) {
        this.adminDao.frostUserByUserId(userId);
        System.out.println("成功冻结用户"+userId);
    }

    @Override
    public List<User> findAllUser() {
        List<User> result = this.adminDao.findAllUser();
        System.out.println("查找所有用户");
        return result;
    }

    @Override
    public void deleteUserByUserId(Integer userId) {
        this.adminDao.deleteUserByUserId(userId);
        System.out.println("成功删除用户"+userId);
    }

    @Override
    public void unfreezeUserByUserId(Integer userId) {
        this.adminDao.unfreezeUserByUserId(userId);
        System.out.println("成功解冻用户"+userId);
    }

    @Override
    public void hiddenPostByRoot(Integer postId) {
        this.adminDao.hiddenPostByRoot(postId);
    }

    @Override
    public void deletePostByRoot(Integer postId) {
        this.adminDao.deletePostByRoot(postId);
    }
}
