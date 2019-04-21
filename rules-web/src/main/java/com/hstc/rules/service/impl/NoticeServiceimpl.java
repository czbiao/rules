package com.hstc.rules.service.impl;

import com.hstc.rules.domain.Notice;
import com.hstc.rules.exception.NoticeServiceException;
import com.hstc.rules.exception.PersistenceException;
import com.hstc.rules.persistence.NoticeDAO;
import com.hstc.rules.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by linjingshan on 2017/6/10.
 */
@Service
public class NoticeServiceimpl implements NoticeService {
    private NoticeDAO noticeDAO;

    @Autowired
    public NoticeServiceimpl(NoticeDAO noticeDAO) {
        this.noticeDAO = noticeDAO;
    }

    public void publishNotice(Notice notice) throws NoticeServiceException {
        try {
            noticeDAO.insertNotice(notice);
        } catch (PersistenceException pe) {
            NoticeServiceException ne = new NoticeServiceException();
            ne.setErrorCode(100);
            throw ne;
        }
    }

    public Notice getNotice(int noticeId) throws NoticeServiceException {
        try {
            NoticeServiceException ne = new NoticeServiceException();
            Notice notice=noticeDAO.getNotice(noticeId);
            if(notice==null){
                ne.setErrorCode(101);
                throw ne;
            }
            return notice;
        } catch (PersistenceException pe) {
            NoticeServiceException ne = new NoticeServiceException();
            ne.setErrorCode(100);
            throw ne;
        }
    }

    public List<Notice> getTextNoticeList() throws NoticeServiceException {
        try {
            NoticeServiceException ne = new NoticeServiceException();
            List<Notice> textNoticeList=noticeDAO.getTextNoticeList();
            if(textNoticeList==null){
                ne.setErrorCode(102);
                throw ne;
            }
            return textNoticeList;
        } catch (PersistenceException pe) {
            NoticeServiceException ne = new NoticeServiceException();
            ne.setErrorCode(100);
            throw ne;
        }
    }

    public List<Notice> getPictrueNoticeList() throws NoticeServiceException {
        try {
            NoticeServiceException ne = new NoticeServiceException();
            List<Notice> pictureNoticeList=noticeDAO.getPictrueNoticeList();
            if(pictureNoticeList==null){
                ne.setErrorCode(103);
                throw ne;
            }
            return pictureNoticeList;
        } catch (PersistenceException pe) {
            NoticeServiceException ne = new NoticeServiceException();
            ne.setErrorCode(100);
            throw ne;
        }
    }

    public void deleteNotice(int noticeId) throws NoticeServiceException {
        try {
            NoticeServiceException ne = new NoticeServiceException();
            if(noticeDAO.getNotice(noticeId)==null){
                ne.setErrorCode(104);
                throw ne;
            }
            noticeDAO.deleteNotice(noticeId);
        } catch (PersistenceException pe) {
            NoticeServiceException ne = new NoticeServiceException();
            ne.setErrorCode(100);
            throw ne;
        }
    }

    public void updateNotice(Notice notice) throws NoticeServiceException {
        try {
            NoticeServiceException ne = new NoticeServiceException();
            if(noticeDAO.getNotice(notice.getNoticeId())==null){
                ne.setErrorCode(105);
                throw ne;
            }
            noticeDAO.updateNotice(notice);
        } catch (PersistenceException pe) {
            NoticeServiceException ne = new NoticeServiceException();
            ne.setErrorCode(100);
            throw ne;
        }
    }

    public List<Notice> getPicListByPage(int offset, int count) throws NoticeServiceException {
        try {
            NoticeServiceException ne = new NoticeServiceException();
            List<Notice> pictureNoticeList=noticeDAO.getPicNoticeListByPage(offset,count);
            if(pictureNoticeList==null){
                ne.setErrorCode(106);
                throw ne;
            }
            return pictureNoticeList;
        } catch (PersistenceException pe) {
            NoticeServiceException ne = new NoticeServiceException();
            ne.setErrorCode(100);
            throw ne;
        }
    }

    public List<Notice> getTextListByPage(int offset, int count) throws NoticeServiceException {
        try {
            NoticeServiceException ne = new NoticeServiceException();
            List<Notice> textNoticeList=noticeDAO.getTextNoticeListByPage(offset,count);
            if(textNoticeList==null){
                ne.setErrorCode(107);
                throw ne;
            }
            return textNoticeList;
        } catch (PersistenceException pe) {
            NoticeServiceException ne = new NoticeServiceException();
            ne.setErrorCode(100);
            throw ne;
        }
    }
}
