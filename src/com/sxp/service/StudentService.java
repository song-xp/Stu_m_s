package com.sxp.service;

import com.sxp.pojo.Student;

import java.util.List;

public interface StudentService {
    public List<Student> selectAll();

    public int stuadd(Student student);

    public int update(Student student);

    public int studel(int sid);

    public Student stuLogin(Integer sid,String sno);
}
