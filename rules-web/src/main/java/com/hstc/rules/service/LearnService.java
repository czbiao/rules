package com.hstc.rules.service;

import com.hstc.rules.domain.*;
import com.hstc.rules.exception.LearnServiceException;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by linjingshan on 17-6-10.
 */
public interface LearnService {

    /**
     * @param clockin
     * @throws LearnServiceException
     * 61.clockin字段不合法
     * 50.数据持久化异常
     */
    void insertClock(Clockin clockin) throws LearnServiceException;

    /**
     * @return
     * @throws LearnServiceException
     * 56.account字段不合法
     * 50.数据持久化异常
     */
    List<Clockin> getAllClocks(Account account) throws LearnServiceException;

    /**
     * @param account
     * @param datetime
     * @return
     * @throws LearnServiceException
     * 56.account字段不合法
     * 62.datetime字段不合法
     * 50.数据持久化异常
     */
    Clockin getClockDetailByDay(Account account, Timestamp datetime) throws LearnServiceException;

    /**
     * 更新今天的打卡信息
     * @param clockin
     * @throws LearnServiceException
     * 61.clockin字段不合法或者不是当前日期
     * 50.数据持久化异常
     */
    void updateTodayClock(Clockin clockin) throws LearnServiceException;
}
