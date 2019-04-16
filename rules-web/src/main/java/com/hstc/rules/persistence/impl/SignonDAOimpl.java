package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Signon;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.SignonDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by CMM on 2017/6/10.
 */
@Repository
public class SignonDAOimpl extends AbstractDAO implements SignonDAO {
    public Account login(long studentId, String password) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "select account from Account as account,  Signon signon " + "where signon.studentId=account.studentId and signon.studentId=" + studentId + " and signon.password='"+ password +"'";
            List<Account> list = session.createQuery(hql).list();
            session.flush();
            transaction.commit();
            return list.size() > 0 ? list.get(0) : null;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }

    public void insertSignonInfo(Signon signon) {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(signon);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }
}
