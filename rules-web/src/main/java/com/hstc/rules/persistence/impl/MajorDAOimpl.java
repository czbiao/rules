package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Major;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.MajorDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by linjingshan on 18-7-4.
 */
@Repository
public class MajorDAOimpl extends AbstractDAO implements MajorDAO {
    public void insertMajor(Major major) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(major);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<Major> getMajorListByCollegeId(int collegeId) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "from Major as major where collegeId=" + collegeId;
            List<Major> list = session.createQuery(hql).list();
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

    public List<Major> getMajorListByName(String name) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "from Major as major where name=" + name;
            List<Major> list = session.createQuery(hql).list();
            session.flush();
            transaction.commit();
            return list;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }
}
