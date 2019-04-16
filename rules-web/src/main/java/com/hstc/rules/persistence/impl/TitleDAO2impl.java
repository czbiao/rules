package com.hstc.rules.persistence.impl;

import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.TitleDAO2;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by linjingshan on 2018/05/01 14:21.
 *
 * @version : 1.0
 */
@Repository
public class TitleDAO2impl extends AbstractDAO implements TitleDAO2 {

    @Transactional(readOnly = true)
    @Cacheable(cacheNames = "titledao", key = "'titlesize'")
    public Long getTotalTitleSize() throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "select count(*) from Title as title";
            Long count = (Long) session.createQuery(hql).uniqueResult();
            session.flush();
            transaction.commit();
            return count;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        } finally {
            session.close();
        }
    }
}
