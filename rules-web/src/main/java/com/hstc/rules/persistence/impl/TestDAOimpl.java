package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Testinfo;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.TestDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by GF on 2017/6/10.
 */
@Repository
public class TestDAOimpl extends AbstractDAO implements TestDAO{
    /*
  *返回考试相关信息
  * type:0 考试
  * type:1 竞赛
  * */
    public List<Testinfo> getTestInfoList() throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql="from Testinfo as testinfo where testinfo.type=? order by testId desc";
            org.hibernate.query.Query query=session.createQuery(hql);
            query.setInteger(0,new Integer(0).byteValue());
            List<Testinfo> tsetinfoList=query.list();
            session.flush();
            transaction.commit();
            return tsetinfoList;
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void insertTestInfo(Testinfo testinfo) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(testinfo);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void deleteTestInfo(int testId) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Testinfo testinfo=(Testinfo)session.get(Testinfo.class,new Integer(testId));
            session.delete(testinfo);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void updateTestInfo(Testinfo testinfo) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.update(testinfo);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public Testinfo getTestInfo(int testId) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Testinfo testinfo=(Testinfo)session.get(Testinfo.class,new Integer(testId));
            session.flush();
            transaction.commit();
            return testinfo;
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }
}
