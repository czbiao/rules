package com.hstc.rules.persistence;

import com.hstc.rules.domain.Clockin;
import com.hstc.rules.exception.PersistenceException;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by linjingshan on 17-6-10.
 */
public interface ClockDAO {

    /**
     * @throws PersistenceException
     */
    void insertClock(Clockin clockin) throws PersistenceException;

    /**
     * @param studentId
     * @return
     * @throws PersistenceException
     */
    List<Clockin> getAllClocks(long studentId) throws PersistenceException;

    /**
     * @param datetime
     * @return
     * @throws PersistenceException
     */
    Clockin getClockByDay(long studentId, Timestamp datetime) throws PersistenceException;

    /**
     * @throws PersistenceException
     */
    void updateClock(Clockin clockin) throws PersistenceException;
}
