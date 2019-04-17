package com.hstc.rules.persistence;

import com.hstc.rules.domain.Account;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;

/**
 * Created by linjingshan on 18-5-30.
 */
public interface AccountDAO {

    /**
     * 获取用户基本信息
     *
     * @param account
     * @return
     * @throws PersistenceException
     */
    Account getUserInfo(Account account) throws PersistenceException;

    /**
     * 插入批量的用户信息
     *
     * @param accountList
     * @throws PersistenceException
     */
    void insertUserInfoList(List<Account> accountList) throws PersistenceException;

    /**
     * 通过注册插入用户信息
     *
     * @param account
     * @throws PersistenceException
     */
    void insertUserInfo(Account account) throws PersistenceException;

    /**
     * 通过权限条件获取学生
     * @param college
     * @return
     * @throws PersistenceException
     */
    List<Account> getAccountListByCondition(String college)throws PersistenceException;
}