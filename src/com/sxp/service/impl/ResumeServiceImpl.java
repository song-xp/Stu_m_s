package com.sxp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sxp.dao.ResumeDao;
import com.sxp.pojo.Resume;
import com.sxp.service.ResumeService;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService {
    @Autowired
    private ResumeDao resumeDao;

    @Override
    public List<Resume> jianli(String sno) {
        List<Resume> resume = this.resumeDao.jianli(sno);
        return resume;
    }

    @Override
    public int addResume(Resume resume) {
        return resumeDao.addResume(resume);
    }

    @Override
    public int addPhoto(Resume resume) {
        return resumeDao.addPhoto(resume);
    }

    @Override
    public Resume resumePersonal(String sno) {
        Resume resume = this.resumeDao.resumePersonal(sno);
        return resume;
    }

}
