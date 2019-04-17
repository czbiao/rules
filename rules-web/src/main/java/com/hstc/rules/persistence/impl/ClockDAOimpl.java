package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Clockin;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.ClockDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by linjingshan on 18-6-10.
 */
@Repository
public class ClockDAOimpl extends AbstractDAO implements ClockDAO {

    public void insertClock(Clockin clockin) throws PersistenceException {
        // 首先判断是否是同天第二次调用此方法，如果是，则进行更新操作，如果不是，则插入记录
        Clockin clockin1 = getClockByDay(clockin.getStudentId(),clockin.getClockDay());
        if (clockin1 != null) { updateClock(clockin); return;}
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(clockin);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<Clockin> getAllClocks(long studentId) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "from Clockin as clockin where clockin.studentId=" + studentId;
            List<Clockin> clockinList = session.createQuery(hql).list();
            session.flush();
            transaction.commit();
            return clockinList;
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public Clockin getClockByDay(long studentId, Timestamp datetime) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = "from Clockin as clockin where clockin.studentId=" + studentId +
                    " and extract(year from clockin.clockDay)=" + (datetime.getYear() + 1900) +
                    " and extract(month from clockin.clockDay)=" + (datetime.getMonth() + 1) +
                    " and extract(day from clockin.clockDay)=" + (datetime.getDate());
            List<Clockin> clockinList = session.createQuery(hql).list();
            session.flush();
            transaction.commit();
            return clockinList != null && clockinList.size() > 0 ? clockinList.get(0) : null;
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void updateClock(Clockin clockin) throws PersistenceException {
        Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.update("Clockin", clockin);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }
}
