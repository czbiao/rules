package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Admin;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.AdminDAO;
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
public class AdminDAOimpl extends AbstractDAO implements AdminDAO {

    public Admin Login(Admin admin) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Criteria criteria = session.createCriteria(Admin.class);
            criteria.add(Restrictions.eq("account", admin.getAccount()));
            criteria.add(Restrictions.eq("password", admin.getPassword()));
            List<Admin> list = criteria.list();
            session.flush();
            transaction.commit();
            return list.size() > 0 ? list.get(0) : null;
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void insertAdmin(Admin admin) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(admin);
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
