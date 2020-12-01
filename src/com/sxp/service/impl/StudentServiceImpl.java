package com.sxp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sxp.dao.StudentDao;
import com.sxp.pojo.Student;
import com.sxp.service.StudentService;

@Service("studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;

    @Override
    public List<Student> selectAll() {
        List<Student> students = this.studentDao.selectAll();
        return students;
    }

    @Override
    public int stuadd(Student student) {
        return studentDao.stuadd(student);
    }

    @Override
    public int update(Student student) {
        return studentDao.update(student);
    }

    @Override
    public int studel(int sid) {
        return studentDao.studel(sid);
    }

    @Override
    public Student stuLogin(Integer sid, String sno) {
        Student students = this.studentDao.stuLogin(sid, sno);
        return students;
    }

}
