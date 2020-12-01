package com.sxp.service;

import com.sxp.pojo.User;

import java.util.List;

public interface UserService {
    public User login(String username, String password);

    public List<User> userlist();

    public User checkUserName(String username);

    public int adduser(User user);

    public int userUpdate(User user);

    public int userdel(int uid);
}
