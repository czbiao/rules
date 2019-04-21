package com.hstc.rules.persistence;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Signon;
import com.hstc.rules.exception.PersistenceException;


/**
 * Created by linjingshan on 2018/6/10.
 */
public interface SignonDAO {
    /**
     * 登录
     *
     * @param studentId
     * @param password
     * @return
     * @throws PersistenceException
     */
    Account login(long studentId, String password) throws PersistenceException;

    void insertSignonInfo(Signon signon);
}
