package com.hstc.rules.persistence;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Testinfo;
import com.hstc.rules.domain.Testtitle;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;

/**
 * Created by linjingshan on 18-7-2.
 */
public interface TesttitleDAO {
    /**
     * @param testtitle
     * @throws PersistenceException
     * 插入学生考试试题
     */
    void insertTesttitle (Testtitle testtitle) throws PersistenceException;

    /**
     * @param studentId
     * @param testId
     * @return
     * @throws PersistenceException
     * 根据学号和考试id查找关联试题
     */
    Testtitle getTesttitle (long studentId, int testId) throws PersistenceException;

    /**
     * @param testtitle
     * @return
     * @throws PersistenceException
     * 查找学生考试关联试题
     */
    Testtitle getTesttitle (Testtitle testtitle) throws PersistenceException;

    /**
     * @param account
     * @param testinfo
     * @return
     * @throws PersistenceException
     * 根据用户和考试信息查找关联试题
     */
    Testtitle getTesttitle (Account account, Testinfo testinfo) throws PersistenceException;

    /**
     * @param studentId
     * @param testId
     * @throws PersistenceException
     * 根据学号和考试id删除关联试题记录
     */
    void deleteTesttitle (long studentId, int testId) throws PersistenceException;

    /**
     * @param testtitle
     * @throws PersistenceException
     * 删除关联试题记录
     */
    void deleteTesttitle (Testtitle testtitle) throws PersistenceException;

    /**
     * @param account
     * @param testinfo
     * @throws PersistenceException
     * 根据用户和考试信息删除关联试题记录
     */
    void deleteTesttitle (Account account, Testinfo testinfo) throws PersistenceException;

    /**
     * 获取所有学生考试题
     * @param testId
     * @return
     * @throws PersistenceException
     */
    List<Testtitle> getTesttitleList(int testId) throws PersistenceException;
}
