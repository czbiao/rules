package com.hstc.rules.service.impl;

import com.hstc.rules.domain.*;
import com.hstc.rules.exception.AccountServiceException;
import com.hstc.rules.persistence.*;
import com.hstc.rules.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.PersistenceException;
import java.util.List;

/**
 * Created by linjingshan on 17-5-30.
 */
@Service
@CacheConfig(cacheNames = "user")
public class AccountServiceimpl implements AccountService {

    private AccountDAO accountDAO;
    private SignonDAO signonDAO;
    private AdminDAO adminDAO;
    private FeedbackDAO feedbackDAO;

    @Autowired
    public AccountServiceimpl(AccountDAO accountDAO, SignonDAO signonDAO, AdminDAO adminDAO,FeedbackDAO feedbackDAO) {
        this.accountDAO = accountDAO;
        this.signonDAO = signonDAO;
        this.adminDAO = adminDAO;
        this.feedbackDAO=feedbackDAO;
    }

    public Account login(long studentId, String password) throws AccountServiceException {
        try {
            AccountServiceException ae = new AccountServiceException();
            // 字段验证
            // 修改字段验证规则
            // 如果学号以多个0开头，那么后台转换成long值后会将0去除
            // 所以学号的位数可能小于10
            // 2018-04-22 14:11:38
            int len = Long.toString(studentId).length();
            if (len > 15 || len < 6) {
                ae.setErrorCode(0);
                throw ae;
            } else if (password == null || password.length() < 6) {
                ae.setErrorCode(1);
                throw ae;
            }

            Account account = signonDAO.login(studentId, password);
            if (account == null) {
                ae.setErrorCode(2);
                throw ae;
            } else {
                return account;
            }
        } catch (PersistenceException pe) {
            AccountServiceException ae = new AccountServiceException(pe);
            ae.setErrorCode(3);
            throw ae;
        }
    }

    public Account login(Signon signon) throws AccountServiceException {
        AccountServiceException ae = new AccountServiceException();
        if (signon == null) {
            ae.setErrorCode(4);
            throw ae;
        }
        return login(signon.getStudentId(), signon.getPassword());
    }

    public Admin login(Admin admin) throws AccountServiceException {
        AccountServiceException ae = new AccountServiceException();
        if (Integer.toString(admin.getAdminId()).length() == 0) {
            ae.setErrorCode(6);
            throw ae;
        } else if (admin.getPassword() == null) {
            ae.setErrorCode(7);
            throw ae;
        }
        admin = adminDAO.Login(admin);
        return admin;
    }

    @Transactional(readOnly = true)
    @Cacheable(key = "#account.studentId")
    public Account getUserInfo(Account account) throws AccountServiceException {
        AccountServiceException ae = new AccountServiceException();
        Account account1=accountDAO.getUserInfo(account);
        if (account == null) {
            ae.setErrorCode(5);
            throw ae;
        }
        return account1;
    }

    public void submitProposals(Long studentId, String mail, String content) throws AccountServiceException {

    }

    public void exchange(Integral integral) throws AccountServiceException {
    }

    public void insertAdmin(Admin admin) throws AccountServiceException {
        try {
            adminDAO.insertAdmin(admin);
        } catch (PersistenceException pe) {
            AccountServiceException ae = new AccountServiceException(pe);
            ae.setErrorCode(100);
            throw ae;
        }
    }

//    插入用户
    public void insertUser(Account account) throws AccountServiceException {
        try {
            accountDAO.insertUserInfo(account);
        } catch (PersistenceException pe) {
            AccountServiceException ae = new AccountServiceException(pe);
            ae.setErrorCode(100);
            throw ae;
        }
    }

    public void insertUserList(List<Account> accountList) throws AccountServiceException {
      for(Account a:accountList) {
        this.insertUser(a);
      }
    }
    
    public void insertSignon(Signon signon) throws AccountServiceException {
        try {
            signonDAO.insertSignonInfo(signon);
        } catch (PersistenceException pe) {
            AccountServiceException ae = new AccountServiceException(pe);
            ae.setErrorCode(100);
            throw ae;
        }
    }

    public void insertFeedback(Feedback feedback) throws AccountServiceException {
        try {
            feedbackDAO.insertFeedback(feedback);
        } catch (PersistenceException pe) {
            AccountServiceException ae = new AccountServiceException(pe);
            ae.setErrorCode(100);
            throw ae;
        }
    }

    public List<Feedback> getFeedbackList() throws AccountServiceException {
        try {
            List<Feedback> list=feedbackDAO.getFeedbackList();
            return list;
        } catch (PersistenceException pe) {
            AccountServiceException ae = new AccountServiceException(pe);
            ae.setErrorCode(100);
            throw ae;
        }
    }

    public List<Account> getAccountListByCondition(String college) throws AccountServiceException {
        try {
            String[] rolerange=college.split(";");
            List<Account> list=accountDAO.getAccountListByCondition(rolerange[0]);
            return list;
        } catch (PersistenceException pe) {
            AccountServiceException ae = new AccountServiceException(pe);
            ae.setErrorCode(100);
            throw ae;
        }
    }

}
