package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Contesttitle;
import com.hstc.rules.domain.Testinfo;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.ContestTitleDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

/**
 * Created by linjingshan on 2018-7-2.
 */
@Repository
public class ContestTitleDAOimpl extends AbstractDAO implements ContestTitleDAO {

    public void insertContesttitle(Contesttitle contesttitle) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(contesttitle);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public Contesttitle getContesttitle(int testId) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Contesttitle contesttitle = session.get(Contesttitle.class, testId);
            session.flush();
            transaction.commit();
            return contesttitle;
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public Contesttitle getContesttitle(Testinfo testinfo) throws PersistenceException {
        return getContesttitle(testinfo.getTestId());
    }

    public Contesttitle getContesttitle(Contesttitle contesttitle) throws PersistenceException {
        return getContesttitle(contesttitle.getTestId());
    }

    public void deleteContesttitle(int testId) throws PersistenceException {
        Contesttitle contesttitle = new Contesttitle();
        contesttitle.setTestId(testId);
        deleteContesttitle(contesttitle);
    }

    public void deleteContesttitle(Testinfo testinfo) throws PersistenceException {
        deleteContesttitle(testinfo.getTestId());
    }

    public void deleteContesttitle(Contesttitle contesttitle) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.delete(contesttitle);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }
}
