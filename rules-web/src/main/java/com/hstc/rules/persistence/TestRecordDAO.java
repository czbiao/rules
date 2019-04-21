package com.hstc.rules.persistence;

import com.hstc.rules.domain.AccountTestRecord;
import com.hstc.rules.domain.Testrecord;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;


/**
 * Created by linjingshan on 2017/6/10.
 */
public interface TestRecordDAO {
    /**
     * 插入考试成绩
     * @param testrecord
     * @throws PersistenceException
     */
    void insertTestRecord(Testrecord testrecord) throws PersistenceException;

    /**
     * 根据学号和考试id修改考试成绩
     * @param testrecord
     * @throws PersistenceException
     */
    void updateTestRecord(Testrecord testrecord) throws PersistenceException;

    /**
     * 根据学号和考试id查看成绩
     * @param testrecord
     * @return
     * @throws PersistenceException
     */
    Testrecord getTestRecord(Testrecord testrecord) throws PersistenceException;

    /**
     * 管理员功能：根据考试id查看学生考试成绩,打印成绩表
     * 用户功能：查看已经参加考试的人数
     * @param testId
     * @return
     * @throws PersistenceException
     */
    List<Testrecord> getTestRecordList(int testId) throws PersistenceException;

    /**
     * 根据成绩获取list
     * @param testId
     * @return
     * @throws PersistenceException
     */
    List<Testrecord> getTestRecordListByRecord(int testId) throws PersistenceException;

    /**
     * 删除考试成绩
     * @param testrecord
     * @throws PersistenceException
     */

    void deleteTestRecord(Testrecord testrecord) throws PersistenceException;

    /**
     * 按字段条件组合查询
     * @param clazz
     * @param grade
     * @param major
     * @param college
     * @return
     * @throws PersistenceException
     */
    List<AccountTestRecord> getTestrecordByCondition(String clazz, int grade, String major, String college, int level) throws PersistenceException;
}
