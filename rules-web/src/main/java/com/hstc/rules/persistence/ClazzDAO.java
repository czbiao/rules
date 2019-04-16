package com.hstc.rules.persistence;

import com.hstc.rules.domain.Clazz;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;

/**
 * Created by linjingshan on 17-7-4.
 */
public interface ClazzDAO {
    /**
     * 插入班级
     * @param clazz
     * @throws PersistenceException
     */
    void insertClazz(Clazz clazz) throws PersistenceException;

    /**
     * 获取班级列表通过专业编号
     * @param majorId
     * @return
     * @throws PersistenceException
     */
    List<Clazz> getClazzByMajorId(int majorId) throws PersistenceException;

    /**
     * 获取班级列表通过专业名称
     * @param name
     * @return
     * @throws PersistenceException
     */
    List<Clazz> getClazzByName(String name) throws PersistenceException;
}
