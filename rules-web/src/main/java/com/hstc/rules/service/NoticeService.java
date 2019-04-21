package com.hstc.rules.service;

import com.hstc.rules.domain.Notice;
import com.hstc.rules.exception.NoticeServiceException;

import java.util.List;

/**
 * Created by linjingshan on 2018/6/10.
 */
public interface NoticeService {
    /**
     * 管理员功能：发布通知
     * @param notice
     * 异常：
     * 100:持久化层失败异常
     */
    void publishNotice(Notice notice) throws NoticeServiceException;

    /**
     * 根据noticeId查看通知具体内容
     * @param noticeId
     * @return
     * 异常：
     * 101：notice为空
     * 100:持久化层失败异常
     */
    Notice getNotice(int noticeId) throws NoticeServiceException;

    /**
     * 获取文字通知列表
     * @return
     * 异常：
     * 102：文字通知list为空
     * 100:持久化层失败异常
     */
    List<Notice> getTextNoticeList() throws NoticeServiceException;

    /**
     * 获取图片通知列表
     * @return
     * 异常：
     * 103：图片通知list为空
     * 100:持久化层失败异常
     */
    List<Notice> getPictrueNoticeList() throws NoticeServiceException;

    /**
     * 管理员功能：删除通知
     * @param noticeId
     * @throws NoticeServiceException
     * 异常：
     * 104：要删除的notice为空
     * 100:持久化层失败异常
     */
    void deleteNotice(int noticeId) throws NoticeServiceException;

    /**
     * 管理员功能：修改通知内容
     * @param notice
     * @throws NoticeServiceException
     * 异常：
     * 105：要修改的notice为空
     * 100:持久化层失败异常
     */
    void updateNotice(Notice notice) throws NoticeServiceException;

    /**
     * 根据偏移量offset和查询数目count获得图片通知list
     * @param offset
     * @param count
     * @return
     * @throws NoticeServiceException
     * 异常：
     * 106:picList为空
     * 100:持久化层失败异常
     */
    List<Notice> getPicListByPage(int offset,int count) throws NoticeServiceException;

    /**
     * 根据偏移量offset和查询数目count获得文字通知list
     * @param offset
     * @param count
     * @return
     * @throws NoticeServiceException
     * 异常：
     * 107:textList为空
     * 100:持久化层失败异常
     */
    List<Notice> getTextListByPage(int offset,int count) throws NoticeServiceException;
}
