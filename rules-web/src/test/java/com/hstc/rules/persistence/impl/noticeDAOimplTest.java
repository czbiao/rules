package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Notice;
import com.hstc.rules.persistence.NoticeDAO;
import org.junit.Test;

import java.sql.Timestamp;
import java.util.List;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertEquals;

/**
 * Created by linjingshan on 2018/6/10.
 */
public class noticeDAOimplTest {

    private NoticeDAO noticeDAO=new NoticeDAOimpl();

    @Test
    public void testInsertNotice(){
        Notice notice=new Notice();
        notice.setTitle("1");
        notice.setContent("456789");
        notice.setPicture("456");
        notice.setSubmitTime(new Timestamp(System.currentTimeMillis()));
        notice.setType(1);
        noticeDAO.insertNotice(notice);
        Notice notice1=new Notice();
        notice.setTitle("2");
        notice.setContent("123456");
        notice.setPicture("123");
        notice.setSubmitTime(new Timestamp(System.currentTimeMillis()));
        notice.setType(0);
        noticeDAO.insertNotice(notice);
    }

    @Test
    public void testGetNotice(){
        Notice notice=noticeDAO.getNotice(3);
        assertTrue(notice!=null);
    }

    @Test
    public void getTextNoticeList(){
        List<Notice> textNoticeList=noticeDAO.getTextNoticeList();
        assertTrue(textNoticeList!=null);
    }

    @Test
    public void getPictureNoticeList(){
        List<Notice> picNoticeList=noticeDAO.getPictrueNoticeList();
        assertTrue(picNoticeList!=null);
    }

    @Test
    public void deleteNotice(){
        noticeDAO.deleteNotice(3);
    }

    @Test
    public void updateNotice(){
        Notice notice=new Notice();
        notice.setNoticeId(6);
        notice.setTitle("1");
        notice.setContent("456789");
        notice.setPicture("456");
        notice.setSubmitTime(new Timestamp(System.currentTimeMillis()));
        notice.setType(1);
        noticeDAO.updateNotice(notice);
    }

    @Test
    public void testPicNoticeListByPage(){
        List<Notice> picNoticeList=noticeDAO.getPicNoticeListByPage(0,1);
        assertTrue(picNoticeList.size()==1);
    }
}
