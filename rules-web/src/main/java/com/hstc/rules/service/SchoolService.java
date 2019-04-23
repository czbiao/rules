package com.hstc.rules.service;

import com.hstc.rules.domain.Clazz;
import com.hstc.rules.domain.College;
import com.hstc.rules.domain.Major;
import com.hstc.rules.exception.SchoolServiceException;

import java.util.List;

/**
 * Created by linjingshan on 2018-7-4.
 */
public interface SchoolService {
    /**
     * 获取所有学院
     * @return
     * @throws SchoolServiceException
     * 50.数据持久化异常
     */
    List<College> getCollegeList() throws SchoolServiceException;

    /**
     * 获取专业列表
     * @param college
     * @return
     * @throws SchoolServiceException
     * 70.College字段异常
     * 50.数据持久化异常
     */
    List<Major> getMajorList(College college) throws SchoolServiceException;

    /**
     * 获取班级列表
     * @param major
     * @return
     * @throws SchoolServiceException
     * 71.Major字段异常
     * 50.数据持久化异常
     */
    List<Clazz> getClazzList(Major major) throws SchoolServiceException;
}
