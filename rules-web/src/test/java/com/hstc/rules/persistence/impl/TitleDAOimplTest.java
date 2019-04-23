package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Option;
import com.hstc.rules.domain.Title;
import com.hstc.rules.persistence.TitleDAO;
import com.hstc.rules.persistence.TitleDAO2;
import org.junit.Test;

import java.util.HashSet;
import java.util.Set;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

/**
 * Created by linjingshan on 2018-6-9.
 */
public class TitleDAOimplTest {

    private TitleDAO2 titleDAO2 = new TitleDAO2impl();
    private TitleDAO titleDAO = new TitleDAOimpl(titleDAO2);

    @Test
    public void testAddTitle2() throws Exception {
        Title title = new Title();
        title.setName("4+4等于多少？");
        title.setScore(5);
        title.setDiffId(1);
        Set<Option> options = new HashSet<Option>();
        for (int i = 0;i < 4;i++) {
            Option option = new Option();
            option.setContent(String.valueOf(i + i));
            option.setChecked((byte)0);
            options.add(option);
        }
        title.setOptions(options);
        assertTrue(titleDAO.addTitle(title)!=null);
    }

    @Test
    public void testGetTitle() throws Exception {
        assertTrue(titleDAO.getTitle(2).getOptions() != null);
        assertFalse(titleDAO.getTitle(100) != null);
    }

    @Test
    public void testGetTitleList() throws Exception {
        assertTrue(titleDAO.getTitleList(0,10).get(0).getTitleId() == 1);
        assertTrue(titleDAO.getTitleList(1, 10).size() <= 2);
    }

    @Test
    public void testGetRandomTitleList() throws Exception {
        assertTrue(titleDAO.getRandomTitleList(10) != null);
    }

    @Test
    public void testGetTotalTitleSize() throws Exception {
        assertTrue(titleDAO.getTotalTitleSize() == 10);
    }
}