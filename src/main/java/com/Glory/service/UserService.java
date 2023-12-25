package com.Glory.service;

import com.Glory.po.User;

import java.util.Map;

public interface UserService {
    public User findUserByEmail(String email);
    public void register(User user);
    public void userEdit(User user);
    public Integer loginCheck(User user);
    public Integer registerCheck(User user);
}
