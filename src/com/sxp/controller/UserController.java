package com.sxp.controller;

import com.sxp.pojo.User;
import com.sxp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam(required=false,defaultValue="0")int status, String username,
                        String password, Model model, HttpSession session,
                        HttpServletResponse response, HttpServletRequest request){
        User user = userService.login(username,password);

        if(status==1){
            //创建cookie对象
            Cookie ck = new Cookie(username,password);
            //设置Cookie有效时间,单位为秒
            ck.setMaxAge(1 * 24 * 60 * 60);
            //设置Cookie的有效范围,/为全部路径
            ck.setPath("/");
            response.addCookie(ck);
        }else{
            //如果没有选中记住密码,则将已记住密码的cookie失效.即有效时间设为0
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if(cookie.getName().equals(username)){
                    cookie.setMaxAge(0);
                    cookie.setPath("/");
                    response.addCookie(cookie);
                }
            }
        }

        if(user != null){
            session.setAttribute("user",user);
            return "redirect:selectAll";
        }
        model.addAttribute("msg","账号或密码错误！");
        return "login";
    }

    @RequestMapping("/userlist")
    public String userlist(Model model,String msg){
        List<User> user = userService.userlist();
        model.addAttribute("users",user);
        model.addAttribute("msg", msg);
        return "userlist";
    }

    @RequestMapping(value = "/checkUserName",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String checkUserName(String username){
        User user = userService.checkUserName(username);
        String msg = null;
        if(user != null){
            msg = "该用户名已存在，请更换！";
        }else{
            msg = "该用户名可以使用";
        }
        return msg;
    }

    @RequestMapping(value = "/adduser",method = RequestMethod.POST)
    public String adduser(User user,Model model){
        Date date = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = df.format(date.getTime());
        user.setAddtime(time);
        user.setLasttime(time);
        user.setCount(1);
        int rows = userService.adduser(user);
        if(rows>0){
            model.addAttribute("msg","信息插入成功！");
        }else{
            model.addAttribute("msg","信息插入失败！！！");
        }
        return "adduser";
    }

    @RequestMapping("/useredit")
    public String useredit(int uid,Model model){
        User user = new User();
        user.setUid(uid);
        model.addAttribute("user",user);
        return "userUpdate";
    }

    @RequestMapping("/userUpdate")
    public String userUpdate(User user,Model model){
        int rows = userService.userUpdate(user);
        if(rows>0){
            model.addAttribute("msg","信息更新成功！");
        }else{
            model.addAttribute("msg","信息更新失败！！！");
        }
        return "userUpdate";
    }

    @RequestMapping("/userdel")
    public String userdel(int uid,Model model){
        int rows = userService.userdel(uid);
        if(rows>0){
            model.addAttribute("msg","信息删除成功！");
        }else{
            model.addAttribute("msg","信息删除失败！！！");
        }
        return "redirect:userlist";
    }
}
