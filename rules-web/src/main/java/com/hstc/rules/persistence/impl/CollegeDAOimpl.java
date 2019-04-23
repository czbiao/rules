package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.College;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.CollegeDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by linjingshan on 2018-7-4.
 */
@Repository
public class CollegeDAOimpl extends AbstractDAO implements CollegeDAO {
    public void insertCollege(College college) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(college);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<College> getCollegeList() throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            List<College> list = session.createQuery("from College").list();
            session.flush();
            transaction.commit();
            return list;
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }
}
