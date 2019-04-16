package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Clazz;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.ClazzDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by linjingshan on 17-7-4.
 */
@Repository
public class ClazzDAOimpl extends AbstractDAO implements ClazzDAO {
    public void insertClazz(Clazz clazz) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(clazz);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<Clazz> getClazzByMajorId(int majorId) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "from Clazz as clazz where majorId=" + majorId;
            List<Clazz> list = session.createQuery(hql).list();
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

    public List<Clazz> getClazzByName(String name) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "from Clazz as clazz where name='" + name + "'";
            List<Clazz> list = session.createQuery(hql).list();
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
