package com.hstc.rules.persistence;

import com.hstc.rules.domain.Testinfo;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;

/**
 * Created by linjingshan on 2017/6/10.
 */
public interface TestDAO {
    //用户：获取多个考试信息
    List<Testinfo> getTestInfoList() throws PersistenceException;
    /**
     * 管理员功能：插入考试信息
     * type 0:考试 1:竞赛
     * @param testinfo
     * @throws PersistenceException
     */
    void insertTestInfo(Testinfo testinfo) throws PersistenceException;

    /**
     * 管理员功能：删除考试信息
     * @param testId
     * @throws PersistenceException
     */
    void deleteTestInfo(int testId) throws PersistenceException;

    /**
     * 管理员功能：修改考试信息
     * @param testinfo
     * @throws PersistenceException
     */
    void updateTestInfo(Testinfo testinfo) throws PersistenceException;

    /**
     * 管理员功能：根据考试id查看考试信息
     * @param testId
     * @throws PersistenceException
     */
    Testinfo getTestInfo(int testId) throws  PersistenceException;
}
