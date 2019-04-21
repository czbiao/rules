package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Integral;
import com.hstc.rules.persistence.IntegralDAO;
import org.junit.Test;

import static junit.framework.TestCase.assertEquals;

/**
 * Created by linjingshan on 2018/6/10.
 */
public class IntegralDAOimplTest {
    private IntegralDAO integralDAO = new IntegralDAOimpl();

    /**
     * 测试获取积分
     */
    @Test
    public void testGetIntegral() {
        Account account = new Account();
        account.setStudentId(3903150326L);
        Integral integral = integralDAO.getIntegral(account);
        assertEquals(integral.getIntegralNum().intValue(), 10);
    }

    @Test
    public void testInsertIntegral() {
        Integral integral = new Integral();
        integral.setIntegralNum(5);
        integral.setStudentId(3903150327L);
        integralDAO.insertIntegral(integral);
    }

    @Test
    public void testUpdateIntegral() {
        Integral integral = new Integral();
        integral.setIntegralNum(6);
        integral.setStudentId(3903150327L);
        integralDAO.updateIntegral(integral);
    }
}
