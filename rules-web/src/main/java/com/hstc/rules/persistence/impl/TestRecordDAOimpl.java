package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.AccountTestRecord;
import com.hstc.rules.domain.Testrecord;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.TestRecordDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by linjingshan on 2017/6/10.
 */
@Repository
public class TestRecordDAOimpl extends AbstractDAO implements TestRecordDAO {
    public void insertTestRecord(Testrecord testrecord) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.save(testrecord);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void updateTestRecord(Testrecord testrecord) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.update(testrecord);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public Testrecord getTestRecord(Testrecord testrecord) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Criteria criteria=session.createCriteria(Testrecord.class);
            criteria.add(Restrictions.eq("studentId",new Long(testrecord.getStudentId())));
            criteria.add(Restrictions.eq("testId",testrecord.getTestId()));
            criteria.addOrder(Order.desc("startTime"));
            List<Testrecord> list=criteria.list();
            session.flush();
            transaction.commit();
            return list.size() > 0 ? list.get(0) : null;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<Testrecord> getTestRecordList(int testId) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Criteria criteria=session.createCriteria(Testrecord.class);
            criteria.add(Restrictions.eq("testId",testId));
            List<Testrecord> testrecordList=criteria.list();
            session.flush();
            transaction.commit();
            return testrecordList;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<Testrecord> getTestRecordListByRecord(int testId) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql="from Testrecord as testrecord where testrecord.testId=? order by score desc";
            org.hibernate.query.Query query=session.createQuery(hql);
            query.setInteger(0,testId);
            List<Testrecord> testrecordList=query.list();
            session.flush();
            transaction.commit();
            return testrecordList;
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void deleteTestRecord(Testrecord testrecord) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            session.delete(testrecord);
            session.flush();
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<AccountTestRecord> getTestrecordByCondition(String clazz, int grade, String major, String college, int level) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql = formatHql(clazz, grade, major, college, level);
            List<AccountTestRecord> list = session.createQuery(hql).list();
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

    private String formatHql(String clazz, int grade, String major, String college, int level) {
        // Sunss 这里我只要竞赛信息
//        String hql =  "select new com.hstc.rules.domain.AccountTestRecord(a.studentId, a.username, a.clazz, a.grade, a.major, a.college, t.score) " +
//                "from Testrecord as t, Account as a where ";
        String hql =  "select new com.hstc.rules.domain.AccountTestRecord(a.studentId, a.username, a.clazz, a.grade, a.major, a.college, t.score) " +
                "from Testrecord as t, Account as a where ";
        int initSize = hql.length();
        hql += (clazz != null && !clazz.equals("") ? "a.clazz=\'" + clazz + "\' and " : "");
        hql += (grade != 0 ? "a.grade=" + grade + " and "  : "");
        hql += (major != null && !major.equals("") ? "a.major=\'" + major + "\' and " : "");
        hql += (college != null && !college.equals("") ? "a.college=\'" + college + "\' and " : "");
        hql += (level != 0 ? "t.score>=" + level + " and " : "");
        // 如果四个字段全没有，即字符串为null或者空字符，数字为0, 此时查询全校记录
        if (hql.length() == initSize) {
            hql = "select new com.hstc.rules.domain.AccountTestRecord(a.studentId, a.username, a.clazz, a.grade, a.major, a.college, t.score) " +
                    "from Testrecord as t, Account as a where a.studentId=t.studentId";
        } else {
            hql = hql.substring(0, hql.length() - 5);
            hql += " and a.studentId=t.studentId";
        }
        System.out.println(hql);
        hql += " and t.testId=1";
        return hql;
    }

    private String formatHql2(String college, int level, int testId) {
        StringBuilder sb = new StringBuilder();
        sb.append(formatHql(null, 0, null, college, level));
        sb.append(" and t.testId=" + testId);
        return sb.toString();
    }
}
