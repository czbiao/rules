package com.hstc.rules.persistence;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Wrongtitle;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;

/**
 * Created by linjingshan on 2017/6/10.
 */
public interface WrongtitleDAO {
    /**
     * 获取错题集合
     *
     * @param account
     * @return
     * @throws PersistenceException
     */
    List<Wrongtitle> getWrongTitleIdList(Account account) throws PersistenceException;

    /**
     * 将错题插入到用户错题记录中
     *
     * @param wrongtitle
     * @return
     * @throws PersistenceException
     */
    void insertWrongTitle(Wrongtitle wrongtitle) throws PersistenceException;

    /**
     * 将错题从用户错题库中删除
     *
     * @param wrongtitle
     * @return
     * @throws PersistenceException
     */
    void deleteWrongTitle(Wrongtitle wrongtitle) throws PersistenceException;

    /**
     * 获取错题
     * @param wrongtitle
     * @return
     * @throws PersistenceException
     */
    Wrongtitle getWrongTitle(Wrongtitle wrongtitle) throws PersistenceException;
}
