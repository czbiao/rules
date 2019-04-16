package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Wrongtitle;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.WrongtitleDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by CMM on 2017/6/10.
 */
@Repository
public class WrongtitleDAOimpl extends AbstractDAO implements WrongtitleDAO {
    public List<Wrongtitle> getWrongTitleIdList(Account account) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Criteria criteria = session.createCriteria(Wrongtitle.class);
            criteria.add(Restrictions.eq("studentId", account.getStudentId()));
            List<Wrongtitle> wrongtitleList = criteria.list();
            session.flush();
            transaction.commit();
            return wrongtitleList;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }

    public void insertWrongTitle(Wrongtitle wrongtitle) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(wrongtitle);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }

    public void deleteWrongTitle(Wrongtitle wrongtitle) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.delete(wrongtitle);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }

    public Wrongtitle getWrongTitle(Wrongtitle wrongtitle) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "from Wrongtitle as wrongtitle where studentId=" + wrongtitle.getStudentId() +
                    " and titleId=" + wrongtitle.getTitleId();
            List<Wrongtitle> list = session.createQuery(hql).list();
            session.flush();
            transaction.commit();
            return (list != null && list.size() > 0) ? list.get(0) : null;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }
}
