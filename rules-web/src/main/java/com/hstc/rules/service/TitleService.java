package com.hstc.rules.service;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Additiontitle;
import com.hstc.rules.domain.Title;
import com.hstc.rules.domain.Wrongtitle;
import com.hstc.rules.exception.TitleServiceException;

import java.util.List;
import java.util.Set;

/**
 * Created by linjingshan on 18-6-11.
 */
public interface TitleService {
    // Sunss 这里很核心
    /**
     * 试题练习获取试题,选择题
     * @param page
     * @param count
     * @return
     * @throws TitleServiceException
     * 51.page字段不合法
     * 52.count字段不合法
     * 50.数据持久化异常
     */
    List<Title> getTitleListByPage(int page, int count) throws TitleServiceException;

    /**
     * 试题练习获取不同类型题目，非选择题
     * @param page
     * @param count
     * @param type
     * @return
     * @throws TitleServiceException
     * 51.page字段不合法
     * 52.count字段不合法
     * 64.type字段不合法
     * 50.数据持久化异常
     */
    List<Additiontitle> getTitleListByTypeAndPage(int page, int count, int type) throws TitleServiceException;

    /**
     * 考试模块随机试题
     * @param count
     * @return
     * @throws TitleServiceException
     * 52.count字段不合法
     * 50.数据持久化异常
     */
    List<Title> getTitleListByRandom(int count) throws TitleServiceException;

    /**
     * 考试模块随机生成count个类型为type的试题
     * @param count
     * @param type
     * @return
     * @throws TitleServiceException
     * 52.count字段不合法
     * 64.type字段不合法
     * 50.数据持久化异常
     */
    List<Additiontitle> getRandomTitleListByType(int count, int type) throws TitleServiceException;

    /**
     * 试题练习模块提交选择试题
     * @param titleList
     * @return
     * @throws TitleServiceException
     * 53.titleList字段不合法
     * 50.数据持久化异常
     *
     */
    List<Title> submitTitleList(Account account, List<Title> titleList) throws TitleServiceException;

    List<Title> submitTitleList2( List<Title> titleList)throws TitleServiceException;

    List<Additiontitle> submitAdditionList2( List<Additiontitle> titleList)throws TitleServiceException;
    /**
     * 试题练习模块提交非选择题目
     * @param account
     * @param titleList
     * @return
     * @throws TitleServiceException
     * 53.titleList字段不合法
     * 50.数据持久化异常
     */
    List<Additiontitle> submitAdditionList(Account account, List<Additiontitle> titleList) throws TitleServiceException;

    /**
     * 题目是否正确,正确时将options设为null，错误返回正确题目
     * @param title
     * @return
     * @throws TitleServiceException
     * 54.title字段合法性
     * 55.题目正确性检查异常
     * 50.数据持久化异常
     */
    Title getCorrectTitle(Title title) throws TitleServiceException;

    /**
     * 题目是否正确，正确时将答案设为null,错误时返回正确题目
     * @param title
     * @return
     * @throws TitleServiceException
     * 54.title字段合法性
     * 55.题目正确性检查异常
     * 65.答案格式化错误，大小不一致
     * 50.数据持久化异常
     */
    Additiontitle getCorrectTitle(Additiontitle title) throws TitleServiceException;

    /**
     * @param title
     * @return
     * @throws TitleServiceException
     * 54.title字段合法性
     * 55.题目正确性检查
     * 50.数据持久化异常
     */
    boolean isTitleCorrect(Title title) throws TitleServiceException;

    /**
     * 得到用户错题列表
     * @param account
     * @return
     * @throws TitleServiceException
     * 56.account字段不合法
     * 50.数据持久化异常
     *
     */
    List<Wrongtitle> getWrongTitleListByStudentId(Account account) throws TitleServiceException;

    /**
     * 竞赛获取试题以及获取错误试题
     * @param integers
     * @return
     * @throws TitleServiceException
     * 57.integers字段不合法
     * 50.数据持久化异常
     */
    List<Title> getTitleListByTitleIds(Set<Integer> integers) throws TitleServiceException;

    /**
     * 竞赛获取非选择试题
     * @param integers
     * @return
     * @throws TitleServiceException
     * 57.integers字段不合法
     * 50.数据持久化异常
     */
    List<Additiontitle> getAdditiontitleListByTitleIds(Set<Integer> integers) throws TitleServiceException;

    /**
     * 获取单个选择试题
     * @param title
     * @return
     * @throws TitleServiceException
     * 58.title字段不合法
     * 59.没有Title返回
     * 50.数据持久化异常
     */
    Title getTitle(Title title) throws TitleServiceException;

    /**
     * 获取单个非选择试题
     * @param title
     * @return
     * @throws TitleServiceException
     * 58.title字段不合法
     * 59.没有title返回
     * 50.数据持久化异常
     */
    Additiontitle getTitle(Additiontitle title) throws TitleServiceException;

    /**
     * @param titleList
     * @return 分数
     * @throws TitleServiceException
     * 60.titleList字段不合法
     * 50.数据持久化异常
     */
    int getTitlePageScore(List<Title> titleList) throws TitleServiceException;

    /**
     * @param titleList
     * @return
     * @throws TitleServiceException
     * 60.titleList字段不合法
     * 50.数据持久化异常
     */
    int getAdditiontitlePageScore(List<Additiontitle> titleList) throws TitleServiceException;

    /**
     * 获取count个选择题编号集
     * @param count
     * @return
     * @throws TitleServiceException
     * 52.count字段不合法
     * 50.数据持久化异常
     */
    String getRandomIntegerList(int count) throws TitleServiceException;

    /**
     * 获取count个类型为type的题目编号集
     * @param count
     * @param type
     * @return
     * @throws TitleServiceException
     * 52.count字段异常
     * 64.type字段异常
     * 50.数据持久化异常
     */
    String getRandomIntegerListByType(int count, int type) throws TitleServiceException;

    /**
     * @param formatString
     * @return
     * @throws TitleServiceException
     * 通过格式化的试题id字符串找到对应的试题列表
     * 61.formatString为空
     * 50.数据持久化异常
     */
    List<Title> getTitleListByFormatString(String formatString) throws TitleServiceException;

    /**
     * 通过格式化的非选择题试题id字符串找到对应的试题列表
     * @param formatString
     * @return
     * @throws TitleServiceException
     * 61.formatString为空
     * 50.数据持久化异常
     */
    List<Additiontitle> getAdditiontitleListByFormatString(String formatString) throws TitleServiceException;

    /**
     * @param title
     * @throws TitleServiceException
     * 添加题目
     * 62.title字段不合法
     * 50.数据持久化异常
     */
    void insertTitle(Title title) throws TitleServiceException;

    /**
     * 添加题目
     * @param title
     * @throws TitleServiceException
     * 62.title字段不合法
     * 50.数据持久化异常
     */
    void insertTitle(Additiontitle title) throws TitleServiceException;

    /**
     * @param titleList
     * @throws TitleServiceException
     * 63.titleList字段异常
     * 50.数据持久化异常
     */
    void insertTitleList(List<Title> titleList) throws TitleServiceException;

    /**
     * 添加试题列表
     * @param titleList
     * @throws TitleServiceException
     * 63.titleList字段异常
     * 50.数据持久化异常
     */
    void insertAdditionTitleList(List<Additiontitle> titleList) throws TitleServiceException;
}
