package com.sxp.dao;

import com.sxp.pojo.Resume;
import com.sxp.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {
    public List<Student> selectAll();

    public int stuadd(Student student);

    public int update(Student student);

    public int studel(int sid);

    public Student stuLogin(@Param("sid") Integer sid,@Param("sno") String sno);
}
