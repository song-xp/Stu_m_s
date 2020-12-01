package com.sxp.service.impl;

import com.sxp.dao.UserDao;
import com.sxp.pojo.User;
import com.sxp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("/userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public User login(String username, String password) {
        User user = this.userDao.login(username,password);
        return user;
    }

    @Override
    public List<User> userlist() {
        List<User> user = this.userDao.userlist();
        return user;
    }

    @Override
    public User checkUserName(String username) {
        User user = this.userDao.checkUserName(username);
        return user;
    }

    @Override
    public int adduser(User user) {
        return userDao.adduser(user);
    }

    @Override
    public int userUpdate(User user) {
        return userDao.userUpdate(user);
    }

    @Override
    public int userdel(int uid) {
        return userDao.userdel(uid);
    }
}
