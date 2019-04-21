package com.hstc.rules.persistence;

import com.hstc.rules.domain.Admin;
import com.hstc.rules.exception.PersistenceException;

/**
 * Created by linjingshan on 2017/6/10.
 */
public interface AdminDAO {
    /**
     * 管理员登录
     *
     * @param admin
     * @return
     */
    Admin Login(Admin admin) throws PersistenceException;

    /**
     * 添加管理员
     * @param admin
     * @throws PersistenceException
     */
    void insertAdmin(Admin admin) throws PersistenceException;
}
