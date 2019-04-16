package com.hstc.rules.service;

import com.hstc.rules.domain.Testinfo;
import com.hstc.rules.exception.TestServiceException;

/**
 * Created by linjingshan on 2018/05/01 04:07.
 *
 * @version : 1.0
 */
public interface TestService2 extends TestService {

    /**
     * 获取最新的模拟考试信息
     * @return 如果有数据则返回一条信息，否则返回null
     * @throws TestServiceException
     * 异常： 100.持久化层失败异常
     */
    Testinfo getLatestTestInfo() throws TestServiceException;

    /**
     *
     * 获取最新的竞赛信息
     * @return 如果有数据则返回一条信息，否则返回null
     * @throws TestServiceException
     * @return 异常： 100.持久化层失败异常
     */
    Testinfo getLatestContestTestInfo() throws TestServiceException;
}
