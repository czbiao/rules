package com.hstc.rules.service.impl;

import com.hstc.rules.domain.*;
import com.hstc.rules.exception.TestServiceException;
import com.hstc.rules.persistence.*;
import com.hstc.rules.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.PersistenceException;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created by linjingshan on 2017/6/9.
 */
@Service
public class TestServiceimpl implements TestService {
    private ContestTestDAO contestTestDAO;
    private TestDAO testDAO;
    private TestRecordDAO testRecordDAO;
    private TesttitleDAO testtitleDAO;
    private ContestTitleDAO contestTitleDAO;
    private PaperrecordDAO paperrecordDAO;

    @Autowired
    public TestServiceimpl(ContestTestDAO contestTestDAO, TestDAO testDAO, TestRecordDAO testRecordDAO,
                           TesttitleDAO testtitleDAO, ContestTitleDAO contestTitleDAO,PaperrecordDAO paperrecordDAO) {
        this.contestTestDAO = contestTestDAO;
        this.testDAO = testDAO;
        this.testRecordDAO = testRecordDAO;
        this.testtitleDAO = testtitleDAO;
        this.contestTitleDAO = contestTitleDAO;
        this.paperrecordDAO=paperrecordDAO;
    }

    public void registContest(Contestregistion contestregistion) throws TestServiceException {
        try {
            contestTestDAO.registContest(contestregistion);
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public Contestregistion isRegistedContest(Contestregistion contestregistion) throws TestServiceException {
        try {
            Contestregistion contest = contestTestDAO.isRegistedContest(contestregistion);
            return contest;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }


    public List<Contestregistion> getContestRegistionList(Testinfo testInfo) throws TestServiceException {
        try {
            TestServiceException te = new TestServiceException();
            List<Contestregistion> contestRegistionList = contestTestDAO.getContestRegistionList(testInfo);
            if (contestRegistionList == null) {
                te.setErrorCode(108);
                throw te;
            }
            return contestRegistionList;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public Contestregistion changeContestStatus(Contestregistion contestregistion) throws TestServiceException {
        try {
            Testinfo testinfo = testDAO.getTestInfo(contestregistion.getTestId());
            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            Timestamp startTime = testinfo.getStartTime();
            Timestamp endTime = testinfo.getEndTime();
            if (currentTime.before(endTime) && currentTime.after(startTime)) {
                Contestregistion contest = new Contestregistion();
                contestTestDAO.changeContestStatusBegin(contestregistion);
                contest = contestTestDAO.getContestRegistion(contestregistion);
                return contest;
            }
            else if (currentTime.after(endTime)) {
                Contestregistion contest = new Contestregistion();
                contestTestDAO.changeContestStatusEnd(contestregistion);
                contest = contestTestDAO.getContestRegistion(contestregistion);
                return contest;
            }else{
                return contestTestDAO.getContestRegistion(contestregistion);
            }
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @Cacheable(cacheNames = "test", key = "'contestlist'")
    public List<Testinfo> getContestInfoList() throws TestServiceException {
        try {
            TestServiceException te = new TestServiceException();
            List<Testinfo> contestInfoList = contestTestDAO.getContestInfoList();
            if (contestInfoList == null) {
                te.setErrorCode(109);
                throw te;
            }
            return contestInfoList;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @Cacheable(cacheNames = "test", key = "'testlist'")
    public List<Testinfo> getTestInfoList() throws TestServiceException {
        try {
            TestServiceException te = new TestServiceException();
            List<Testinfo> testInfoList = testDAO.getTestInfoList();
            if (testInfoList == null) {
                te.setErrorCode(110);
                throw te;
            }
            return testInfoList;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @CacheEvict(cacheNames = "test", allEntries = true)
    public void insertTestInfo(Testinfo testinfo) throws TestServiceException {
        try {
            testDAO.insertTestInfo(testinfo);
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @CacheEvict(cacheNames = "test", allEntries = true)
    public void deleteTestInfo(int testId) throws TestServiceException {
        try {
            testDAO.deleteTestInfo(testId);
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @CacheEvict(cacheNames = "test", allEntries = true)
    public void updateTestInfo(Testinfo testinfo) throws TestServiceException {
        try {
            testDAO.updateTestInfo(testinfo);
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional(readOnly = true)
    @Cacheable(cacheNames = "test", key = "'idtest'.concat(#testId)")
    public Testinfo getTestInfo(int testId) throws TestServiceException {
        try {
            TestServiceException te = new TestServiceException();
            Testinfo testinfo = testDAO.getTestInfo(testId);
            if (testinfo == null) {
                te.setErrorCode(111);
                throw te;
            }
            return testinfo;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @CachePut(value = "record", key = "'latestrd'.concat(#testrecord.studentId).concat(#testrecord.testId)")
    public Testrecord insertTestRecord(Testrecord testrecord) throws TestServiceException {
        try {
            testRecordDAO.insertTestRecord(testrecord);
            return testRecordDAO.getTestRecord(testrecord);
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @CachePut(value = "record", key = "'latestrd'.concat(#testrecord.studentId).concat(#testrecord.testId)")
    public Testrecord updateTestRecord(Testrecord testrecord) throws TestServiceException {
        try {
            testRecordDAO.updateTestRecord(testrecord);
            return testRecordDAO.getTestRecord(testrecord);
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional(readOnly = true)
    @Cacheable(cacheNames = "record", key = "'latestrd'.concat(#testrecord.studentId).concat(#testrecord.testId)")
    public Testrecord getTestRecord(Testrecord testrecord) throws TestServiceException {
        try {
            TestServiceException te = new TestServiceException();
            Testrecord testrecord1 = testRecordDAO.getTestRecord(testrecord);
            return testrecord1;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    // 管理员使用，不需要缓存
    public List<Testrecord> getTestRecordList(int testId) throws TestServiceException {
        try {
            TestServiceException te = new TestServiceException();
            List<Testrecord> testRecordList = testRecordDAO.getTestRecordList(testId);
            if (testRecordList == null) {
                te.setErrorCode(113);
                throw te;
            }
            return testRecordList;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    // 不需要缓存
    public int getTestPersonTotalNum(int testId) throws TestServiceException {
        try {
            int count = testRecordDAO.getTestRecordList(testId).size();
            return count;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public int getContestRank(Testrecord testrecord) throws TestServiceException {
        try {
            int count = 1;
            List<Testrecord> testrecordList = testRecordDAO.getTestRecordListByRecord(testrecord.getTestId());
            Testrecord testrecord1=testRecordDAO.getTestRecord(testrecord);
            if (testrecord == null || testrecord1.getSubmitTime() == null || testrecord1.getScore() == null) return Integer.MAX_VALUE;
            // Sunss 这里还要添加计算做题时间的
            for (int i = 0; i < testrecordList.size(); i++) {
                if (testrecordList.get(i).getSubmitTime() == null || testrecordList.get(i).getScore() == null) continue;
                long time1 = testrecordList.get(i).getSubmitTime().getTime() - testrecordList.get(i).getStartTime().getTime();
                long time2 = testrecord1.getSubmitTime().getTime() - testrecord1.getStartTime().getTime();
                if (testrecordList.get(i).getScore() > testrecord1.getScore()) {
                    count++;
                }else if(testrecordList.get(i).getScore().equals(testrecord1.getScore()) && time1 > time2){
                    count++;
                }
            }
            return count;
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @CacheEvict(cacheNames = "record", key = "'latestrd'.concat(#testrecord.studentId).concat(#testrecord.testId)")
    public void deleteTestRecord(Testrecord testrecord) throws TestServiceException {
        try {
            Testrecord testrecord1=testRecordDAO.getTestRecord(testrecord);
            testRecordDAO.deleteTestRecord(testrecord1);
        } catch (PersistenceException e) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void insertTesttitle(Testtitle testtitle) throws TestServiceException {
        try {
            testtitleDAO.insertTesttitle(testtitle);
        } catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @CachePut(cacheNames = "testtitle", key = "'latesttesttitle'.concat(#testrecord.studentId).concat(#testrecord.testId)")
    public Testtitle insertTesttitle(Testrecord testrecord, String formatString, String blankIds, String judgeIds,
                                String shortIds, String caseIds, String discussIds) throws TestServiceException {
        Testtitle testtitle = new Testtitle();
        testtitle.setStudentId(testrecord.getStudentId());
        testtitle.setTestId(testrecord.getTestId());
        testtitle.setTitleIds(formatString);
        testtitle.setBlankIds(blankIds);
        testtitle.setJudgeIds(judgeIds);
        testtitle.setShortIds(shortIds);
        testtitle.setCaseIds(caseIds);
        testtitle.setDiscussIds(discussIds);
        insertTesttitle(testtitle);
        return testtitleDAO.getTesttitle(testrecord.getStudentId(), testrecord.getTestId());
    }

    @Transactional(readOnly = true)
    @Cacheable(cacheNames = "testtitle", key = "'latesttesttitle'.concat(#testrecord.studentId).concat(#testrecord.testId)")
    public Testtitle getTesttitleByTestrecord(Testrecord testrecord) throws TestServiceException {
        try {
            return testtitleDAO.getTesttitle(testrecord.getStudentId(), testrecord.getTestId());
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    @Transactional
    @CacheEvict(cacheNames = "testtitle", key = "'latesttesttitle'.concat(#testrecord.studentId).concat(#testrecord.testId)")
    public void deleteTestTitle(Testrecord testrecord) throws TestServiceException {
        try {
            testtitleDAO.deleteTesttitle(testrecord.getStudentId(), testrecord.getTestId());
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public List<Testtitle> getTesttitleList(int testId) throws TestServiceException {
        try {
            return testtitleDAO.getTesttitleList(testId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void insertContesttitle(Contesttitle contesttitle) throws TestServiceException {
        try {
            contestTitleDAO.insertContesttitle(contesttitle);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public Contesttitle getContesttitle(int testId) throws TestServiceException {
        try {
            Contesttitle contesttitle=contestTitleDAO.getContesttitle(testId);
            return contesttitle;
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public Contesttitle getContesttitle(Testinfo testinfo) throws TestServiceException {
        try {
            Contesttitle contesttitle=contestTitleDAO.getContesttitle(testinfo);
            return contesttitle;
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public Contesttitle getContesttitle(Contesttitle contesttitle) throws TestServiceException {
        try {
            Contesttitle contesttitle1=contestTitleDAO.getContesttitle(contesttitle);
            return contesttitle1;
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void deleteContesttitle(int testId) throws TestServiceException {
        try {
            contestTitleDAO.deleteContesttitle(testId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void deleteContesttitle(Testinfo testinfo) throws TestServiceException {
        try {
            contestTitleDAO.deleteContesttitle(testinfo);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void deleteContesttitle(Contesttitle contesttitle) throws TestServiceException {
        try {
            contestTitleDAO.deleteContesttitle(contesttitle);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public List<AccountTestRecord> getTestRecordByCondition(String clazz, int grade, String major, String college, int level) throws TestServiceException{
        try {
            return testRecordDAO.getTestrecordByCondition(clazz, grade, major, college, level);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void insertPaperrecord(Paperrecord paperrecord) throws TestServiceException {
        try {
            paperrecordDAO.insertPaperrecord(paperrecord);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void deletePaperrecord(int paperId) throws TestServiceException {
        try {
            paperrecordDAO.deletePaperrecord(paperId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void deletePaperrecordByStudentId(long studentId) throws TestServiceException {
        try {
            paperrecordDAO.deletePaperrecordByStudentId(studentId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void deletePaperrecordByTestId(int testId) throws TestServiceException {
        try {
            paperrecordDAO.deletePaperrecordByTestId(testId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void deletePaperrecordByStudentIdAndTestId(long studentId, int testId) throws TestServiceException {
        try {
            paperrecordDAO.deletePaperrecordByStudentIdAndTestId(studentId, testId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public Paperrecord getPaperrecord(int paper_id) throws TestServiceException {
        try {
            return paperrecordDAO.getPaperrecord(paper_id);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public Paperrecord getPaperrecordByStudentIdAndTestId(long studentId, int testId) throws TestServiceException {
        try {
            return paperrecordDAO.getPaperrecordByStudentIdAndTestId(studentId, testId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public List<Paperrecord> getPaperrecordByStudentId(long studentId) throws TestServiceException {
        try {
            return paperrecordDAO.getPaperrecordByStudentId(studentId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void updatePaperrecord(int paperId, Paperrecord paperrecord) throws TestServiceException {
        try {
           paperrecordDAO.updatePaperrecord(paperId, paperrecord);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public void updatePaperrecordBy(long studentId, int testId, Paperrecord paperrecord) throws TestServiceException {
        try {
            paperrecordDAO.updatePaperrecordBy(studentId,testId, paperrecord);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }

    public List<Paperrecord> getPaperrecordByTestId(int testId) throws TestServiceException {
        try {
            return paperrecordDAO.getPaperRecordListByTestid(testId);
        }catch (PersistenceException pe) {
            TestServiceException te = new TestServiceException();
            te.setErrorCode(100);
            throw te;
        }
    }
}
