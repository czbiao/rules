package com.hstc.rules.persistence.impl;

import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.AdditiontitleDAO2;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by linjingshan on 2018/05/01 14:05.
 *
 * @version : 1.0
 */
@Repository
public class AdditiontitleDAO2impl extends AbstractDAO implements AdditiontitleDAO2 {


    @Transactional(readOnly = true)
    @Cacheable(cacheNames = "additiondao", key = "'typeids'.concat(#type)")
    public List<Integer> getAdditiontitleIdsByType(int type) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "select additiontitle.titleId from Additiontitle as additiontitle where type=" + type;
            List<Integer> list = session.createQuery(hql).list();
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
