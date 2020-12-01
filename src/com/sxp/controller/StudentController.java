package com.sxp.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sxp.pojo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sxp.pojo.Student;
import com.sxp.service.StudentService;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("/selectAll")
        public String selectAll(Model model, Page page,String msg) {
        PageHelper.offsetPage(page.getStart(),3);
        List<Student> students = studentService.selectAll();
        int total = (int) new PageInfo<Student>(students).getTotal();
        page.caculateLast(total);
        model.addAttribute("students", students);
        model.addAttribute("msg", msg);
        return "stulist";
    }

    @RequestMapping(value = "/stuadd",method = RequestMethod.POST)
    public String stuadd(Student student,Model model){
        Date date = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = df.format(date.getTime());
        student.setRegtime(time);
        int rows = studentService.stuadd(student);
        if(rows>0){
            model.addAttribute("msg","信息插入成功！");
        }else{
            model.addAttribute("msg","信息插入失败！！！");
        }
        return "add";
    }

    @RequestMapping(value = "/stuedit")
    public String stuedit(int sid,Model model){
        Student student = new Student();
        student.setSid(sid);
        model.addAttribute("student",student);
        return "update";
    }

    @RequestMapping("/update")
    public String update(Student student, Model model){
        int rows = studentService.update(student);
        if(rows>0){
            model.addAttribute("msg","信息更新成功！");
        }else{
            model.addAttribute("msg","信息更新失败！！！");
        }
        return "update";
    }

    @RequestMapping("/studel")
    public String studel(Integer sid, Model model) {
        int rows = studentService.studel(sid);
        if(rows>0){
            model.addAttribute("msg","信息删除成功！");
        }else{
            model.addAttribute("msg","信息删除失败！！！");
        }
        return "redirect:selectAll";
    }

    @RequestMapping(value = "/stuLogin",method = RequestMethod.POST)
    public String stuLogin(Integer sid, String sno, Model model, HttpSession session){
        Student student = studentService.stuLogin(sid, sno);
        if(student != null){
            System.out.println(student);
            session.setAttribute("student",student);
            model.addAttribute("msg", "登录成功");
            return "forward:resumePersonal";
        }
        model.addAttribute("msg", "用户名或密码错误！！！");
        return "stuLogin";
    }
}
