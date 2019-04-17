package com.hstc.rules.persistence;

import com.hstc.rules.domain.Contesttitle;
import com.hstc.rules.domain.Testinfo;
import com.hstc.rules.exception.PersistenceException;

/**
 * Created by linjingshan on 18-7-2.
 */
public interface ContestTitleDAO {
    /**
     * @param contesttitle
     * @throws PersistenceException
     * 添加竞赛关联题目
     */
    void insertContesttitle (Contesttitle contesttitle) throws PersistenceException;

    /**
     * @param testId
     * @return
     * @throws PersistenceException
     * 根据竞赛id查找关联题目
     */
    Contesttitle getContesttitle (int testId) throws PersistenceException;

    /**
     * @param testinfo
     * @return
     * @throws PersistenceException
     * 根据竞赛信息查找关联题目
     */
    Contesttitle getContesttitle (Testinfo testinfo) throws PersistenceException;

    /**
     * @param contesttitle
     * @return
     * @throws PersistenceException
     * 根据Contesttitle查找关联题目
     */
    Contesttitle getContesttitle (Contesttitle contesttitle) throws PersistenceException;

    /**
     * @param testId
     * @throws PersistenceException
     * 根据竞赛id删除关联题目
     */
    void deleteContesttitle (int testId) throws PersistenceException;

    /**
     * @param testinfo
     * @throws PersistenceException
     * 根据竞赛信息删除关联题目
     */
    void deleteContesttitle (Testinfo testinfo) throws PersistenceException;

    /**
     * @param contesttitle
     * @throws PersistenceException
     * 删除竞赛关联题目
     */
    void deleteContesttitle (Contesttitle contesttitle) throws PersistenceException;
}
