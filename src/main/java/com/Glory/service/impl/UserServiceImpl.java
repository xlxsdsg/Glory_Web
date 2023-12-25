package com.Glory.service.impl;

import com.Glory.dao.UserDao;
import com.Glory.passwordTool.SHA256;
import com.Glory.po.User;
import com.Glory.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User findUserByEmail(String email) {
        User result = this.userDao.findUserByEmail(email);
        return result;
    }

    @Override
    public void register(User user) {
        SHA256 passwordTool = new SHA256(); //加载加密工具类对象
        user.setPassword(passwordTool.GetSHA256Str(user.getPassword()));
        this.userDao.register(user);
    }

    @Override
    public void userEdit(User user) {
        this.userDao.userEdit(user);
    }

    @Override
    public Integer loginCheck(User user) {
        System.out.println("loginCheck used..");
        SHA256 passwordtool = new SHA256(); //加载密码加密工具对象
        String password = passwordtool.GetSHA256Str(user.getPassword()); //将用户密码加密
        User user1 = this.userDao.findUserByEmail(user.getEmail()); /*从数据库里通过找寻邮箱匹配密码*/
        /*用户已注册*/
        if (user1!=null){
            /*且密码匹配*/
            if (password.equals(user1.getPassword())) {
                /*则根据用户身份返回页面,管理员身份码为2，普通用户身份码为1*/
                /*管理员*/
                if (user1.getIdentity().equals("2")) {
                    System.out.println("管理员成功登录,root login successfully!");
                    return 1;
                }
                /*普通用户*/
                else if (user1.getIdentity().equals("1")){
                    /*该用户状态正常，则放行*/
                    if (user1.getStatus()==1){
                        return 2;
                    }
                    /*用户处于冻结状态，提醒用户,并返回登录页面*/
                    else if (user1.getStatus()==2){
                        return 3;
                    }
                }
            }
            else{/*密码不匹配，则弹窗提示并返回登录页面*/
                return 4;
            }
        }
        /*账号不存在*/
        return 5;
    }

    @Override
    public Integer registerCheck(User user) {
        User user1 = userDao.findUserByEmail(user.getEmail());
        if (user1 != null) /*存在则注册失败，返回注册页面*/
            return 1;
        else
            return 2;
    }
}
