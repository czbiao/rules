package com.hstc.rules.persistence;

import com.hstc.rules.domain.College;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;

/**
 * Created by linjingshan on 18-7-4.
 */
public interface CollegeDAO {
    /**
     * 插入学院
     * @param college
     * @throws PersistenceException
     */
    void insertCollege(College college) throws PersistenceException;

    /**
     * 获取学院列表
     * @return
     * @throws PersistenceException
     */
    List<College> getCollegeList() throws PersistenceException;
}
