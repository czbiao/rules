package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Clockin;
import com.hstc.rules.persistence.ClockDAO;
import org.junit.Test;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

/**
 * Created by linjingshan on 17-6-10.
 */
public class ClockDAOimplTest {

    private ClockDAO clockDAO = new ClockDAOimpl();
    @Test
    public void testInsertClock() throws Exception {
        Clockin clockin = new Clockin();
        clockin.setStudentId(3903150326l);
        clockin.setClockDay(new Timestamp(new Date().getTime()));
        clockin.setComment("李涛江测试打卡");
        clockin.setDuration(50);
        clockin.setTitleNum(20);
        clockDAO.insertClock(clockin);
    }

    @Test
    public void testGetAllClocks() throws Exception {
        List<Clockin> clockinList = clockDAO.getAllClocks(3903150326l);
        assertTrue(clockinList.size() > 0);
    }

    @Test
    public void testGetClockByDay() throws Exception {
        assertTrue(clockDAO.getClockByDay(3903150326l, new Timestamp(new Date().getTime())) != null);
        assertFalse(clockDAO.getClockByDay(3903150327l, new Timestamp(new Date().getTime())) != null);
    }

    @Test
    public void testUpdateClock() throws Exception {
        Clockin clockin = new Clockin();
        clockin.setStudentId(3903150326l);
        clockin.setClockDay(new Timestamp(new Date().getTime()));
        clockin.setComment("李涛江测试打卡update");
        clockin.setDuration(50);
        clockin.setTitleNum(20);
        clockDAO.updateClock(clockin);
    }
}

