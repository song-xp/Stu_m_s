package com.sxp.dao;

import com.sxp.pojo.Resume;

import java.util.List;

public interface ResumeDao {
    public List<Resume> jianli(String sno);

    public int addResume(Resume resume);

    public int addPhoto(Resume resume);

    public Resume resumePersonal(String sno);
}
