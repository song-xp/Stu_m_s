package com.sxp.dao;

import com.sxp.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    public User login(@Param("username") String username, @Param("password") String password);

    public List<User> userlist();

    public User checkUserName(String username);

    public int adduser(User user);

    public int userUpdate(User user);

    public int userdel(int uid);
}
