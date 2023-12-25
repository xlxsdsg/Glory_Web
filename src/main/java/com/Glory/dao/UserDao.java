package com.Glory.dao;

import com.Glory.po.User;

public interface UserDao {
    public User findUserByEmail(String email);
    public void register(User user);
    public void userEdit(User user);
}
