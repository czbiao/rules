package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Feedback;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.FeedbackDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by linjingshan on 2017/7/3.
 */
@Repository
public class FeedbackDAOimpl extends AbstractDAO implements FeedbackDAO {
    public void insertFeedback(Feedback feedback) throws PersistenceException {
            Session session= HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(feedback);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<Feedback> getFeedbackList() throws PersistenceException {
            Session session= HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql="from Feedback";
            Query query=session.createQuery(hql);
            List<Feedback> list=query.list();
            session.flush();
            transaction.commit();
            return list;
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }
}
