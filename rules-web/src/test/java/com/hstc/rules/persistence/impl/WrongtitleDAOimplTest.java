package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Wrongtitle;
import com.hstc.rules.persistence.WrongtitleDAO;
import org.junit.Test;

import java.util.List;

import static junit.framework.TestCase.assertEquals;
import static junit.framework.TestCase.assertTrue;

/**
 * Created by linjingshan on 2018/6/10.
 */
public class WrongtitleDAOimplTest {
    private WrongtitleDAO wrongtitleDAO = new WrongtitleDAOimpl();

    /**
     * 测试获取错题Id List
     *
     * @throws Exception
     */
    @Test
    public void testGetWrongTitleIdList() throws Exception {
        Account account = new Account();
        account.setStudentId(3903150326L);
        WrongtitleDAO wrongtitleDAO = new WrongtitleDAOimpl();
        List<Wrongtitle> wrongtitleList = wrongtitleDAO.getWrongTitleIdList(account);
        assertTrue(wrongtitleList.size() == 1);
        assertEquals(wrongtitleList.get(0).getStudentId(), 3903150326L);
    }

    @Test
    public void testInsertWrongTitle() throws Exception {
        Wrongtitle wrongtitle = new Wrongtitle();
        wrongtitle.setStudentId(3903150327L);
        wrongtitle.setTitleId(2);
        wrongtitleDAO.insertWrongTitle(wrongtitle);
    }

    @Test
    public void testDeleteWrongTitle() throws Exception {
        Wrongtitle wrongtitle = new Wrongtitle();
        wrongtitle.setStudentId(3903150327L);
        wrongtitle.setTitleId(2);
        wrongtitleDAO.deleteWrongTitle(wrongtitle);
    }

}
