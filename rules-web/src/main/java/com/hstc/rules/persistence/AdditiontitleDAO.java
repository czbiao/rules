package com.hstc.rules.persistence;

import com.hstc.rules.domain.Additiontitle;
import com.hstc.rules.exception.PersistenceException;

import java.util.List;
import java.util.Set;

/**
 * Created by linjingshan on 2018-7-17.
 */
public interface AdditiontitleDAO {
    /**
     * 添加题目
     * @param title
     * @return
     * @throws PersistenceException
     */
    Integer addTitle(Additiontitle title) throws PersistenceException;

    /**
     * 添加多个题目
     * @param titleList
     * @throws PersistenceException
     */
    void addTitleList(List<Additiontitle> titleList) throws PersistenceException;

    /**
     * 通过题目id获取题目
     * @param titleId
     * @return
     * @throws PersistenceException
     */
    Additiontitle getTitle(int titleId) throws PersistenceException;

    /**
     * 通过题目类型获取题目列表
     * 用于一次性获取某种类型所有题目
     * @param type
     * @return
     * @throws PersistenceException
     */
    List<Additiontitle> getTitleListByType(int type) throws PersistenceException;

    /**
     * 分页获取某种题目列表
     * 用于题目分类练习时使用
     * @param type
     * @param offset
     * @param count
     * @return
     */
    List<Additiontitle> getTitleListByTypeAndPage(int type, int offset, int count);

    /**
     * 随机获取某种类型题目count个
     * 用于考试时随机获取某种题目
     * @param count
     * @param type
     * @return
     * @throws PersistenceException
     */
    List<Additiontitle> getRandomTitleListByType(int count, int type) throws PersistenceException;

    /**
     * 通过题目编号列表获取题目列表并按类型升序，编号升序排列
     * 用于考试时从随机生成的某种类型编号集合获取题目集合
     * 或者用于从数据库中获取的编号集合获取题目集合
     * @param titleIds
     * @return
     * @throws PersistenceException
     */
    List<Additiontitle> getTitleListByTitleIds(Set<Integer> titleIds) throws PersistenceException;

    /**
     * 获取数据库中某种题目个数
     * 用于比较所要求获取的某种类型题目个数和数据库最大数目
     * @param type
     * @return
     * @throws PersistenceException
     */
    Long getTotalTitleSizeByType(int type) throws PersistenceException;

    /**
     * 随机生成count个某种题目的编号
     * 用于考试时随机生成某种类型题目的编号集合
     * 用于竞赛时随机生成要关联的某种类型题目编号集合
     * @param count
     * @return
     * @throws PersistenceException
     */
    public Set<Integer> randomIntegerList(int count, int type) throws PersistenceException;

    /**
     * 将题目编号集合格式化为要存储的字符串,以','分隔
     * @param set
     * @return
     * @throws PersistenceException
     */
    public String formatSet(Set set) throws PersistenceException;

    /**
     * 将题目编号集合格式化为要存储的字符串
     * 重载方法，可以指定分隔符
     * @param set
     * @param split
     * @return
     * @throws PersistenceException
     */
    public String formatSet(Set set, String split) throws PersistenceException;
    /**
     * 将字符串解析成题目编号集合，字符串以','分隔
     * @param formatString
     * @return
     * @throws PersistenceException
     */
    public Set parseString(String formatString) throws PersistenceException;

    /**
     * 将字符串解析成题目编号集合
     * 重载方法，可以指定分隔符
     * @param formatString
     * @param split
     * @return
     * @throws PersistenceException
     */
    public Set parseString(String formatString, String split) throws PersistenceException;
}
