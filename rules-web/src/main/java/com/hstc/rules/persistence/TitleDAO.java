package com.hstc.rules.persistence;

import com.hstc.rules.domain.Title;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;
import java.util.Set;

/**
 * Created by linjingshan on 17-6-9.
 */
public interface TitleDAO {

    /**
     * @param title
     * @throws PersistenceException
     * 添加题目
     */
    Integer addTitle(Title title) throws PersistenceException;

    /**
     * @param titleList
     * @return
     * @throws PersistenceException
     * 添加试题列表
     */
    void addTitleList(List<Title> titleList) throws PersistenceException;

    /**
     * @param titleId
     * @return
     * @throws PersistenceException
     * 通过titleId得到TitleOption
     */
    Title getTitle(int titleId) throws PersistenceException;

    /**
     * @param offset 题目在数据库中的偏移
     * @param count 返回的题目数量
     * @return
     * @throws PersistenceException
     * 根据偏移offset返回数据库中offset个位置后的count个题目
     */
    List<Title> getTitleList(int offset, int count) throws PersistenceException;

    /**
     * @param count
     * @return
     * @throws PersistenceException
     * 随机生成count个题目
     */
    List<Title> getRandomTitleList(int count) throws PersistenceException;

    /**
     * @param titleIds
     * @return
     * @throws PersistenceException
     * 返回titleIds中的所有题目
     */
    List<Title> getTitleListByTitleIds(Set<Integer> titleIds) throws PersistenceException;

    /**
     * @return
     * @throws PersistenceException
     * 返回题库总题目数
     */
    @Deprecated
    Long getTotalTitleSize() throws PersistenceException;

    /**
     * @param count
     * @return
     * @throws PersistenceException
     * 生成试题id列表
     */
    public Set<Integer> randomIntegerList(int count) throws PersistenceException;

    /**
     * @param set
     * @return
     * @throws PersistenceException
     * 将试题列表格式化为字符串
     */
    public String formatSet(Set set) throws PersistenceException;

    /**
     * @param formatString
     * @return
     * @throws PersistenceException
     * 将格式化的试题id字符串解析成Set
     */
    public Set parseString(String formatString) throws PersistenceException;

//    /**
//     * @param title
//     * @return
//     * @throws PersistenceException
//     */
//    boolean isTitleCorrect(Title title) throws PersistenceException;
}
