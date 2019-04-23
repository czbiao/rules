package com.hstc.rules.service.impl;

import com.hstc.rules.domain.*;
import com.hstc.rules.exception.LearnServiceException;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.ClockDAO;
import com.hstc.rules.service.LearnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by linjingshan on 2018-6-10.
 */
@Service
public class LearnServiceimpl implements LearnService {
    private ClockDAO clockDao;

    @Autowired
    public LearnServiceimpl(ClockDAO clockDao) {
        this.clockDao = clockDao;
    }

    public void insertClock(Clockin clockin) throws LearnServiceException {
        try {
            LearnServiceException le = new LearnServiceException();
            if (clockin == null) {
                le.setErrorCode(61);
                throw le;
            }
            clockDao.insertClock(clockin);
        }catch (PersistenceException pe) {
            LearnServiceException le = new LearnServiceException(pe);
            le.setErrorCode(50);
            throw le;
        }
    }

    public List<Clockin> getAllClocks(Account account) throws LearnServiceException {
        try {
            LearnServiceException le = new LearnServiceException();
            // 修改字段验证规则
            // 如果学号以多个0开头，那么后台转换成long值后会将0去除
            // 所以学号的位数可能小于10
            // 2018-04-22 14:11:38
            int len = Long.toString(account.getStudentId()).length();
            if (len > 15 || len < 6 || account.getUsername() == null) {
                le.setErrorCode(56);
                throw le;
            }
            List<Clockin> clockinList = clockDao.getAllClocks(account.getStudentId());
            return clockinList;
        } catch (PersistenceException pe) {
            LearnServiceException le = new LearnServiceException(pe);
            le.setErrorCode(50);
            throw le;
        }
    }

    public Clockin getClockDetailByDay(Account account, Timestamp datetime) throws LearnServiceException {
        try {
            LearnServiceException le = new LearnServiceException();
            // 修改字段验证规则
            // 如果学号以多个0开头，那么后台转换成long值后会将0去除
            // 所以学号的位数可能小于10
            // 2018-04-22 14:11:38
            int len = Long.toString(account.getStudentId()).length();
            if (len > 15 || len < 6 || account.getUsername() == null) {
                le.setErrorCode(56);
                throw le;
            }else if (datetime == null) {
                le.setErrorCode(62);
                throw le;
            }
            Clockin clockin = clockDao.getClockByDay(account.getStudentId(), datetime);
            return clockin;
        } catch (PersistenceException pe) {
            LearnServiceException le = new LearnServiceException(pe);
            le.setErrorCode(50);
            throw le;
        }
    }

    public void updateTodayClock(Clockin clockin) throws LearnServiceException {
        try {
            LearnServiceException le = new LearnServiceException();
            if (clockin == null) {
                le.setErrorCode(61);
                throw le;
            }
            clockDao.updateClock(clockin);
        } catch (PersistenceException pe) {
            LearnServiceException le = new LearnServiceException(pe);
            le.setErrorCode(50);
            throw le;
        }
    }
}
