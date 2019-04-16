package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.*;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.AccountDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by linjingshan on 17-5-30.
 */
@Repository
public class AccountDAOimpl extends AbstractDAO implements AccountDAO {

    public Account getUserInfo(Account account) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            account = session.get(Account.class, account.getStudentId());
            session.flush();
            transaction.commit();
            return account;
        } catch (RuntimeException e) {
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }

    public void insertUserInfoList(List<Account> accountList) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            for (Account account : accountList)
                session.save(account);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }

    }

    public void insertUserInfo(Account account) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(account);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }

    public List<Account> getAccountListByCondition(String college) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        List<List> accountList = new ArrayList<List>();
        List<Account> list = new ArrayList<Account>();
        try {
            for (int i = 0; i < formatHql(college).size(); i++) {
                List list1 = session.createQuery(formatHql(college).get(i)).list();
                accountList.add(list1);
            }
            for (int i = 0; i < accountList.size(); i++) {
                for (int j = 0; j < accountList.get(i).size(); j++) {
                    list.add((Account) accountList.get(i).get(j));
                }
            }
            session.flush();
            transaction.commit();
            return list;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }

    private List<String> formatHql(String college) {
        List<String> hqls = new ArrayList<String>();
        String hql = "from Account where college='";
        if (college != "") {
            String[] colleges = college.split("#");
            for (int i = 0; i < colleges.length; i++) {
                hql += colleges[i] + "'";
                hqls.add(hql);
            }
        } else {
            String hql1 = "from Account";
            hqls.add(hql1);
        }
        return hqls;
    }
}