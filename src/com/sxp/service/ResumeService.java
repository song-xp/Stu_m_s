package com.sxp.service;

import com.sxp.pojo.Resume;

import java.util.List;

public interface ResumeService {
    public List<Resume> jianli(String sno);

    public int addResume(Resume resume);

    public int addPhoto(Resume resume);

    public Resume resumePersonal(String sno);
}
