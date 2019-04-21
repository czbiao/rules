package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Contestregistion;
import com.hstc.rules.domain.Testinfo;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.AbstractDAO;
import com.hstc.rules.persistence.ContestTestDAO;
import com.hstc.rules.utils.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by linjingshan on 2017/6/8.
 */
@Repository
public class ContestTestDAOimpl extends AbstractDAO implements ContestTestDAO {

    public void registContest(Contestregistion contestregistion) throws PersistenceException {
        Session session= HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        Contestregistion contest=new Contestregistion();
        contest.setStudentId(contestregistion.getStudentId());
        contest.setTestId(contestregistion.getTestId());
        contest.setStatus(0);
        try {
            session.save(contest);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public Contestregistion isRegistedContest(Contestregistion contestregistion) throws PersistenceException{
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Criteria criteria = session.createCriteria(Contestregistion.class);
            criteria.add(Restrictions.eq("studentId", contestregistion.getStudentId()));
            criteria.add(Restrictions.eq("testId", contestregistion.getTestId()));
            List list = criteria.list();
            session.flush();
            transaction.commit();
            if(list.size()!=0) {
                Contestregistion contest = (Contestregistion) list.get(0);
                return contest;
            }else{
                Contestregistion contest=new Contestregistion();
                return contest;
            }
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public List<Contestregistion> getContestRegistionList(Testinfo testInfo) throws PersistenceException{
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Criteria criteria = session.createCriteria(Contestregistion.class);
            criteria.add(Restrictions.eq("testId", testInfo.getTestId()));
            List<Contestregistion> contsetRegistionList = criteria.list();
            session.flush();
            transaction.commit();
            return contsetRegistionList;
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void changeContestStatusBegin(Contestregistion contestregistion) throws PersistenceException{
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            contestregistion.setStatus(1);
            session.update(contestregistion);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public void changeContestStatusEnd(Contestregistion contestregistion) throws PersistenceException{
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            contestregistion.setStatus(2);
            session.update(contestregistion);
            session.flush();
            transaction.commit();
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }

    public Contestregistion getContestRegistion(Contestregistion contestregistion) throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            Criteria criteria = session.createCriteria(Contestregistion.class);
            criteria.add(Restrictions.eq("studentId", contestregistion.getStudentId()));
            criteria.add(Restrictions.eq("testId", contestregistion.getTestId()));
            List list = criteria.list();
            Contestregistion contest = (Contestregistion) list.get(0);
            session.flush();
            transaction.commit();
            return contest;
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }

    }

    public List<Testinfo> getContestInfoList() throws PersistenceException {
            Session session = HibernateUtil.getSession();
        Transaction transaction = getTransation(session);
        try {
            String hql="from Testinfo as testinfo where testinfo.type=? order by testId desc";
            org.hibernate.query.Query query=session.createQuery(hql);
            query.setInteger(0,new Integer(1).byteValue());
            List<Testinfo> contestinfoList=query.list();
            session.flush();
            transaction.commit();
            return contestinfoList;
        }catch (RuntimeException e){
            transaction.rollback();
            throw new PersistenceException(e);
        }finally {
            session.close();
        }
    }
}
