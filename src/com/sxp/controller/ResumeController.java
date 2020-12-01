package com.sxp.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sxp.pojo.Resume;
import com.sxp.service.ResumeService;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ResumeController {
    @Autowired
    private ResumeService resumeService;

    @RequestMapping("/getResume")
    public String jianli(String sno,Model model) {
        List<Resume> resumes = resumeService.jianli(sno);
        Resume resume = new Resume();
        for(Resume r:resumes) {
            resume.setRid(r.getRid());
            resume.setSno(r.getSno());
            resume.setName(r.getName());
            resume.setSex(r.getSex());
            resume.setAddress(r.getAddress());
            resume.setPhone(r.getPhone());
            resume.setAge(r.getAge());
            resume.setSchool(r.getSchool());
            resume.setSub(r.getSub());
            resume.setEdu(r.getEdu());
            resume.setHighschool(r.getHighschool());
            resume.setUniversity(r.getUniversity());
            resume.setPhoto(r.getPhoto());
            resume.setSkill(r.getSkill());
            resume.setProject(r.getProject());
            resume.setIntro(r.getIntro());
            resume.setAddtime(r.getAddtime());
        }
        model.addAttribute("resume", resume);
        return "resume";
    }

    @RequestMapping("/resumeEdit")
    public String resumeEdit(String sno,Model model){
        Resume resume = new Resume();
        resume.setSno(sno);
        model.addAttribute("resume",resume);
        return "addResume";
    }

   @RequestMapping(value = "/addResume",method = RequestMethod.POST)
    public String addResume(Resume resume, Model model,
                            @RequestParam("file") MultipartFile file, HttpServletRequest request)throws IOException{
       Date date = new Date();
       DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       String time = df.format(date.getTime());

       //获取文件的原始名称
       String originName = file.getOriginalFilename();
       //设置上传文件保存地址目录
       String dirPath = request.getServletContext().getRealPath("/uploaded/");
       file.transferTo(new File(dirPath+originName));

       resume.setPhoto(originName);
       resume.setAddtime(time);
       int rows = resumeService.addResume(resume);
       if(rows>0){
           model.addAttribute("msg","个人信息上传成功！");
       }else{
           model.addAttribute("msg","个人信息上传失败！！！");
       }
        return "addResume";
    }

    @RequestMapping("/resumePersonal")
    public String resumePersonal(String sno,Model model){
        Resume resume = resumeService.resumePersonal("201919410201");
        model.addAttribute("resume", resume);
        return "resume";
    }
}
