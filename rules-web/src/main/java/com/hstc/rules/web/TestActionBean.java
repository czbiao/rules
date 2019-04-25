package com.hstc.rules.web;

import com.hstc.rules.domain.*;
import com.hstc.rules.exception.AccountServiceException;
import com.hstc.rules.exception.CatchServiceException;
import com.hstc.rules.exception.TestServiceException;
import com.hstc.rules.exception.TitleServiceException;
import com.hstc.rules.service.AccountService;
import com.hstc.rules.service.TestService;
import com.hstc.rules.service.TitleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by linjingshan on 2018/6/12.
 */
@Controller
@RequestMapping(value = {"/test"})
public class TestActionBean extends AbstractActionBean {
    private TestService testService;
    private TitleService titleService;
    private AccountService accountService;

    @Autowired
    public TestActionBean(TestService testService, TitleService titleService, AccountService accountService) {
        this.testService = testService;
        this.titleService = titleService;
        this.accountService = accountService;
    }

    //获取考试信息
    @RequestMapping(value = "/getTestInfo", method = RequestMethod.GET)
    public ResponseEntity<Testinfo> getTestInfo() {
        try {
            List<Testinfo> testinfoList = testService.getTestInfoList();
            if (testinfoList.size() != 0) {
                Testinfo testinfo = testService.getTestInfoList().get(0);
                return new ResponseEntity<Testinfo>(testinfo, HttpStatus.OK);
            } else {
                return new ResponseEntity<Testinfo>(new Testinfo(), HttpStatus.OK);
            }
        } catch (TestServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    //获取竞赛信息
    @RequestMapping(value = "/getContestInfo", method = RequestMethod.GET)
    public ResponseEntity<Testinfo> getContestInfo() {
        try {
            List<Testinfo> contestinfoList = testService.getContestInfoList();
            if (contestinfoList.size() != 0) {
                Testinfo testinfo = contestinfoList.get(0);
                return new ResponseEntity<Testinfo>(testinfo, HttpStatus.OK);
            } else {
                return new ResponseEntity<Testinfo>(new Testinfo(), HttpStatus.OK);
            }
        } catch (TestServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    //开始考试 插入考试时间信息 判断剩余时间

    //Sunss 估计最初判断题题只是没有数据源而已，但是设计了
    @RequestMapping(value = "/startTest", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Paper> getTestTitle(@RequestBody Testrecord testrecord) {
        try {
//            Testrecord testrecord1 = testService.getTestRecord(testrecord);
//            if (testrecord1 == null) {
                String choiceFormatRandomId = titleService.getRandomIntegerList(20); // 单选
                String blankFormatRandomId = titleService.getRandomIntegerListByType(10, 1);
                String judgeFormatRandomId = titleService.getRandomIntegerListByType(0, 2);
                String shortFormatRandomId = titleService.getRandomIntegerListByType(10, 3);
                String caseFormatRandomId = titleService.getRandomIntegerListByType(0, 4);
                String discussFormatRandomId = titleService.getRandomIntegerListByType(0, 5);
                testrecord.setStartTime(new Timestamp(System.currentTimeMillis()));
                testService.insertTestRecord(testrecord);
                Testtitle testtitle1 = testService.getTesttitleByTestrecord(testrecord);
                if (testtitle1 != null) {
                    testService.deleteTestTitle(testrecord);
                }
                testService.insertTesttitle(testrecord, choiceFormatRandomId, blankFormatRandomId, judgeFormatRandomId, shortFormatRandomId, caseFormatRandomId, discussFormatRandomId);
//            }


            Testtitle testtitle = testService.getTesttitleByTestrecord(testrecord);
            List<Title> choiceList = titleService.getTitleListByFormatString(testtitle.getTitleIds());
            List<Additiontitle> blankList = titleService.getAdditiontitleListByFormatString(testtitle.getBlankIds());
            List<Additiontitle> judgeList = titleService.getAdditiontitleListByFormatString(testtitle.getJudgeIds());
            List<Additiontitle> shortList = titleService.getAdditiontitleListByFormatString(testtitle.getShortIds());
            List<Additiontitle> caseList = titleService.getAdditiontitleListByFormatString(testtitle.getCaseIds());
            List<Additiontitle> discussList = titleService.getAdditiontitleListByFormatString(testtitle.getDiscussIds());

            // 卷面对象
            Paper paper = new Paper();
            paper.setTitleList(choiceList);
            paper.setBlanksList(blankList); // 判断
            paper.setJudgeList(judgeList);
            paper.setShortList(shortList); // 多选
            paper.setCaseList(caseList);
            paper.setDiscussList(discussList);
            return new ResponseEntity<Paper>(paper, HttpStatus.OK);
        } catch (TestServiceException te) {
            throw new CatchServiceException(te);
        } catch (TitleServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    /**
     * 根据有无成绩查看是否考过试
     * 若中途退出考试 查看开始考试的时间
     * 显示考试成绩
     *
     * @param testrecord
     * @return
     */
    @RequestMapping(value = "/testRecordInfo", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Testrecord> getTestRecord(@RequestBody Testrecord testrecord) {
        try {
            Testrecord testrecord1 = testService.getTestRecord(testrecord);
            if (testrecord1 == null) {
                return new ResponseEntity<Testrecord>(new Testrecord(), HttpStatus.OK);
            }
            return new ResponseEntity<Testrecord>(testrecord1, HttpStatus.OK);
        } catch (TestServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    //插入考试成绩的submitTime 判断考试剩余时间
    @RequestMapping(value = "/insertSubmitTime", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> insertSubmitTime(@RequestBody Testrecord testrecord) {
        try {
            Testrecord testrecord1 = testService.getTestRecord(testrecord);
            if (testrecord1 == null) {
                return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
            } else {
                testrecord1.setSubmitTime(new Timestamp(System.currentTimeMillis()));
                testService.updateTestRecord(testrecord1);
                return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
            }
        } catch (TestServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    //提交考试 获取考试成绩 更新testRecord
    @RequestMapping(value = {"/submitTest"}, method = {RequestMethod.POST}, consumes = {"application/json"})
    public ResponseEntity<Testrecord> submitTest(@RequestBody RecordTitles recordTitles) {
        try {
            Testrecord testrecord = testService.getTestRecord(recordTitles.getTestrecord());
            testrecord.setSubmitTime(new Timestamp(System.currentTimeMillis()));
            // linjingshan 2018年05月04日22:56:02 防止同一条记录被多次更新
            if (checkRecordMulUpdate(testrecord)) {
                return new ResponseEntity(new Result("考试已提交"), HttpStatus.OK);
            }

//            int choiceScore = 0;
//            int blankScore = 0;
//            int shortScore = 0;
            int choiceScore = titleService.getTitlePageScore(recordTitles.getSubmitPaper().getTitleList());//选择题分数
//            System.out.println("1");
            int blankScore = titleService.getAdditiontitlePageScore(recordTitles.getSubmitPaper().getBlanksList());//判断题分数
//            System.out.println("2");
            int shortScore = titleService.getAdditiontitlePageScore(recordTitles.getSubmitPaper().getShortList()); // 多选题分数
//            System.out.println("3");
            int totalScore = choiceScore + blankScore + shortScore;
            testrecord.setScore(totalScore);
            testService.updateTestRecord(testrecord);
            Paperrecord paperrecord = new Paperrecord();
            paperrecord.setStudentId(recordTitles.getTestrecord().getStudentId());
            paperrecord.setTestId(recordTitles.getTestrecord().getTestId());
            paperrecord.setBlankScore(blankScore+shortScore);
            paperrecord.setShortAnswer(recordTitles.getSubmitPaper().getShortAnswer());
            paperrecord.setCaseAnswer(recordTitles.getSubmitPaper().getCaseAnswer());
            paperrecord.setDiscussAnswer(recordTitles.getSubmitPaper().getDiscussAnswer());
            paperrecord.setIsCorrected(1);
            testService.insertPaperrecord(paperrecord);
            recordTitles.getSubmitPaper().setTitleList(titleService.submitTitleList2(recordTitles.getSubmitPaper().getTitleList()));
            recordTitles.getSubmitPaper().setBlanksList(titleService.submitAdditionList2(recordTitles.getSubmitPaper().getBlanksList()));
            recordTitles.getSubmitPaper().setShortList(titleService.submitAdditionList2(recordTitles.getSubmitPaper().getShortList()));
            return new ResponseEntity(recordTitles, HttpStatus.OK);
        } catch (TitleServiceException var5) {
            throw new CatchServiceException(var5);
        } catch (TestServiceException var6) {
            throw new CatchServiceException(var6);
        }
    }

    /**
     * 检查一条记录是否被多次更改
     * @return
     */
    private boolean checkRecordMulUpdate(Testrecord testrecord) {
        return testrecord.getScore() != null;
    }

//    @RequestMapping(value = {"/submitTest"}, method = {RequestMethod.POST}, consumes = {"application/json"})
//    public ResponseEntity<Testrecord> submitTest(@RequestBody RecordTitles recordTitles) {
//        try {
//            Testrecord testrecord = this.testService.getTestRecord(recordTitles.getTestrecord());
//            testrecord.setSubmitTime(new Timestamp(System.currentTimeMillis()));
//            int blankScore = this.titleService.getAdditiontitlePageScore(recordTitles.getSubmitPaper().getBlanksList());
//            int shortScore = 2 * this.titleService.getAdditiontitlePageScore(recordTitles.getSubmitPaper().getShortList());
//            testrecord.setScore(new Integer(-1));
//            this.testService.updateTestRecord(testrecord);
//            Paperrecord paperrecord = new Paperrecord();
//            paperrecord.setStudentId(recordTitles.getTestrecord().getStudentId());
//            paperrecord.setTestId(recordTitles.getTestrecord().getTestId());
//            paperrecord.setBlankScore(blankScore+shortScore);
//            paperrecord.setShortAnswer(recordTitles.getSubmitPaper().getShortAnswer());
//            paperrecord.setCaseAnswer(recordTitles.getSubmitPaper().getCaseAnswer());
//            paperrecord.setDiscussAnswer(recordTitles.getSubmitPaper().getDiscussAnswer());
//            paperrecord.setIsCorrected(1);
//            this.testService.insertPaperrecord(paperrecord);
//            return new ResponseEntity(testrecord, HttpStatus.OK);
//        } catch (TitleServiceException var5) {
//            throw new CatchServiceException(var5);
//        } catch (TestServiceException var6) {
//            throw new CatchServiceException(var6);
//        }
//    }

    //获取竞赛排名
    @RequestMapping(value = "/getContsetRank", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Integer> getContsetRank(@RequestBody Testrecord testrecord) {
        try {
            int count = testService.getContestRank(testrecord);
            return new ResponseEntity<Integer>(count, HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //是否报名竞赛
    @RequestMapping(value = "/isRegisted", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Contestregistion> isRegisted(@RequestBody Contestregistion contestregistion) {
        try {
            Contestregistion contestregistion1 = testService.isRegistedContest(contestregistion);
            return new ResponseEntity<Contestregistion>(contestregistion1, HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //报名竞赛
    @RequestMapping(value = "/registContest", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> registContest(@RequestBody Contestregistion contestregistion) {
        try {
            testService.registContest(contestregistion);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, contestregistion), HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //获取竞赛状态
    @RequestMapping(value = "/getContestStatus", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Contestregistion> getContestStatus(@RequestBody Contestregistion contestregistion) {
        try {
            Contestregistion contestregistion2 = testService.isRegistedContest(contestregistion);
            if (contestregistion2.getStudentId() == contestregistion.getStudentId()) {
                Contestregistion contestregistion1 = testService.changeContestStatus(contestregistion);
                return new ResponseEntity<Contestregistion>(contestregistion1, HttpStatus.OK);
            } else {
                Contestregistion contestregistion1 = new Contestregistion();
                return new ResponseEntity<Contestregistion>(contestregistion1, HttpStatus.OK);
            }
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //判断竞赛时间
    @RequestMapping(value = "/getContestTime", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> getContestTime(@RequestBody Testinfo testinfo) {
        try {
            Testinfo testinfo1 = testService.getTestInfo(testinfo.getTestId());
            if (testinfo1.getEndTime().before(new Timestamp(System.currentTimeMillis()))) {
                return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
            } else {
                return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
            }
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //点击X 删除考试成绩信息 if判断是为了防止删除竞赛信息
    @RequestMapping(value = "/deleteTestRecord", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> deleteTestRecord(@RequestBody Testrecord testrecord) {
        try {
            testService.deleteTestRecord(testrecord);
            Testtitle testtitle = testService.getTesttitleByTestrecord(testrecord);
            if (testtitle != null) {
                testService.deleteTestTitle(testrecord);
            }
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //开始竞赛 插入时间信息 返回确定竞赛试题
    // Sunss 通过改变这里，让它变成和测试一样
    @RequestMapping(value = "/startContest", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Paper> getContestTitle(@RequestBody Testrecord testrecord) {
        try {
            Testrecord testrecord1 = testService.getTestRecord(testrecord);
            if (testrecord1 == null) {
                testrecord.setStartTime(new Timestamp(System.currentTimeMillis()));
                testService.insertTestRecord(testrecord);
            }

            // ****************************************************
            // * 防止POST方式多次考试 * linjingshan * 2018年05月04日23:15:25 * 没必要检查
            // ****************************************************
//            if (checkMulContestSubmit(testrecord)) {
//                return new ResponseEntity(new Result("诚信考试，请勿作弊,只有一次"), HttpStatus.OK);
//            }

            // 生成
            Testinfo contestInfo = testService.getContestInfoList().get(0);
            String choiceRandomIds = titleService.getRandomIntegerList(20);
            String blankRandomIds = titleService.getRandomIntegerListByType(10, 1);
            String judgeRandomIds = titleService.getRandomIntegerListByType(0, 2);
            String shortRandomIds = titleService.getRandomIntegerListByType(10, 3);
            String caseRandomIds = titleService.getRandomIntegerListByType(0, 4);
            String discussRandomIds = titleService.getRandomIntegerListByType(0, 5);
//            Contesttitle newcontesttitle = new Contesttitle();
//            newcontesttitle.setTestId(contestInfo.getTestId());
//            newcontesttitle.setTitleIds(choiceRandomIds);
//            newcontesttitle.setBlankIds(blankRandomIds);
//            newcontesttitle.setJudgeIds(judgeRandomIds);
//            newcontesttitle.setShortIds(shortRandomIds);
//            newcontesttitle.setCaseIds(caseRandomIds);
//            newcontesttitle.setDiscussIds(discussRandomIds);
//            testService.insertContesttitle(newcontesttitle);

            // 获取
            // 这里问题就出现了，这样子是拿不到题目的，数据库也会十分混乱，这里我们有没有可能不经过数据库，直接返回randomid呢
//            Contesttitle contesttitle = testService.getContesttitle(testrecord.getTestId());
//            List<Title> choiceList = titleService.getTitleListByFormatString(contesttitle.getTitleIds());
//            List<Additiontitle> blankList = titleService.getAdditiontitleListByFormatString(contesttitle.getBlankIds());
//            List<Additiontitle> judgeList = titleService.getAdditiontitleListByFormatString(contesttitle.getJudgeIds());
//            List<Additiontitle> shortList = titleService.getAdditiontitleListByFormatString(contesttitle.getShortIds());
//            List<Additiontitle> caseList = titleService.getAdditiontitleListByFormatString(contesttitle.getCaseIds());
//            List<Additiontitle> discussList = titleService.getAdditiontitleListByFormatString(contesttitle.getDiscussIds());
            List<Title> choiceList = titleService.getTitleListByFormatString(choiceRandomIds);
            List<Additiontitle> blankList = titleService.getAdditiontitleListByFormatString(blankRandomIds);
            List<Additiontitle> judgeList = titleService.getAdditiontitleListByFormatString(judgeRandomIds);
            List<Additiontitle> shortList = titleService.getAdditiontitleListByFormatString(shortRandomIds);
            List<Additiontitle> caseList = titleService.getAdditiontitleListByFormatString(caseRandomIds);
            List<Additiontitle> discussList = titleService.getAdditiontitleListByFormatString(discussRandomIds);
            Paper paper = new Paper();
            paper.setTitleList(choiceList);
            paper.setBlanksList(blankList);
            paper.setJudgeList(judgeList);
            paper.setShortList(shortList);
            paper.setCaseList(caseList);
            paper.setDiscussList(discussList);
            return new ResponseEntity<Paper>(paper, HttpStatus.OK);
        } catch (TestServiceException te) {
            throw new CatchServiceException(te);
        } catch (TitleServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //判断考试时间未开始还是已结束
    @RequestMapping(value = "/testTimeStatus", method = RequestMethod.GET)
    public ResponseEntity<Result> testTimeStatus() {
        try {
            List<Testinfo> list = testService.getTestInfoList();
            if (list.size() != 0) {
                Testinfo testinfo = list.get(0);
                if (new Timestamp(System.currentTimeMillis()).before(testinfo.getStartTime())) {
                    return new ResponseEntity<Result>(new Result("未开始"), HttpStatus.OK);
                } else if (new Timestamp(System.currentTimeMillis()).after(testinfo.getEndTime())) {
                    return new ResponseEntity<Result>(new Result("已结束"), HttpStatus.OK);
                } else {
                    return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
                }
            } else {
                return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
            }
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }


    /**************************************************管理员****************************************************/
    //插入考试信息
    @RequestMapping(value = "/insertTest", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> insertTest(@RequestBody Testinfo testinfo) {
        try {
            testService.insertTestInfo(testinfo);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, testinfo), HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //删除考试信息
    @RequestMapping(value = "/deleteTest", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> deleteTest(@RequestBody Testinfo testinfo) {
        try {
            Testinfo testinfo1 = testService.getTestInfo(testinfo.getTestId());
            testService.deleteTestInfo(testinfo1.getTestId());
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //修改考试信息
    @RequestMapping(value = "/updateTest", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> updateTest(@RequestBody Testinfo testinfo) {
        try {
            Testinfo testinfo1 = testService.getTestInfo(testinfo.getTestId());
            if (testinfo1 != null) {
                testService.updateTestInfo(testinfo);
            }
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, testinfo), HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //查看考试信息
    @RequestMapping(value = "/getTest", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Testinfo> insertTest(@RequestBody Integer testId) {
        try {
            Testinfo testinfo = testService.getTestInfo(testId);
            return new ResponseEntity<Testinfo>(testinfo, HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //查看学生考试成绩
    @RequestMapping(value = "/getAllTestRecord", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<List<Testrecord>> getAllTestRecord(@RequestBody Integer testId) {
        try {
            List<Testrecord> recordList = testService.getTestRecordList(testId);
            return new ResponseEntity<List<Testrecord>>(recordList, HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }


    //管理员发布竞赛题目(自己挑选试题)
//    @RequestMapping(value = "/insertContestTitle", method = RequestMethod.POST, consumes = "application/json")
//    public ResponseEntity<Result> insertContestTitle(@RequestBody Contesttitle contesttitle) {
//        try {
//            testService.insertContesttitle(contesttitle);
//            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
//        } catch (TestServiceException e) {
//            throw new CatchServiceException(e);
//        }
//    }

    //管理员查看系统提供的随机竞赛试题
    @RequestMapping(value = "/getContestRandomTitle", method = RequestMethod.GET)
    public ResponseEntity<Paper> getContestRandomTitle() {
        try {
            Testinfo contestInfo = testService.getContestInfoList().get(0);
            String choiceRandomIds = titleService.getRandomIntegerList(20);
            String blankRandomIds = titleService.getRandomIntegerListByType(10, 1);
            String judgeRandomIds = titleService.getRandomIntegerListByType(0, 2);
            String shortRandomIds = titleService.getRandomIntegerListByType(10, 3);
            String caseRandomIds = titleService.getRandomIntegerListByType(0, 4);
            String discussRandomIds = titleService.getRandomIntegerListByType(0, 5);
            Contesttitle contesttitle = new Contesttitle();
            contesttitle.setTestId(contestInfo.getTestId());
            contesttitle.setTitleIds(choiceRandomIds);
            contesttitle.setBlankIds(blankRandomIds);
            contesttitle.setJudgeIds(judgeRandomIds);
            contesttitle.setShortIds(shortRandomIds);
            contesttitle.setCaseIds(caseRandomIds);
            contesttitle.setDiscussIds(discussRandomIds);
            testService.insertContesttitle(contesttitle);
            List<Title> choiceList = titleService.getTitleListByFormatString(choiceRandomIds);
            List<Additiontitle> blankList = titleService.getAdditiontitleListByFormatString(blankRandomIds);
            List<Additiontitle> judgeList = titleService.getAdditiontitleListByFormatString(judgeRandomIds);
            List<Additiontitle> shortList = titleService.getAdditiontitleListByFormatString(shortRandomIds);
            List<Additiontitle> caseList = titleService.getAdditiontitleListByFormatString(caseRandomIds);
            List<Additiontitle> discussList = titleService.getAdditiontitleListByFormatString(discussRandomIds);
            Paper paper = new Paper();
            paper.setTitleList(choiceList);
            paper.setBlanksList(blankList);
            paper.setJudgeList(judgeList);
            paper.setShortList(shortList);
            paper.setCaseList(caseList);
            paper.setDiscussList(discussList);
            return new ResponseEntity<Paper>(paper, HttpStatus.OK);
        } catch (TitleServiceException e) {
            throw new CatchServiceException(e);
        } catch (TestServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    //管理员删除竞赛试题
    @RequestMapping(value = "/deleteContestTitle", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> deleteContestTitle(@RequestBody Testinfo testinfo) {
        try {
            Contesttitle contesttitle = testService.getContesttitle(testinfo);
            if (contesttitle != null) {
                testService.deleteContesttitle(testinfo);
            }
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //管理员查看竞赛试题
    @RequestMapping(value = "/getContesttitle", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> getContesttitle(@RequestBody Testinfo testinfo) {
        try {
            Contesttitle contesttitle = testService.getContesttitle(testinfo);
            if (contesttitle == null) {
                return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
            } else {
                return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
            }
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/recordListByCondition", method = RequestMethod.GET)
    public ResponseEntity<List<AccountTestRecord>> getTestRecordByCondition(
            @RequestParam(value = "clazz", defaultValue = "") String clazz,
            @RequestParam(value = "grade", defaultValue = "0") int grade,
            @RequestParam(value = "major", defaultValue = "") String major,
            @RequestParam(value = "college", defaultValue = "") String college,
            @RequestParam(value = "level", defaultValue = "0") int level) {

        try {
            // Sunss这里输出了乱码，这是为什么呢....所以就肯定是查询不到了
            System.out.println(college);
            System.out.println(college);
            System.out.println(college);
            System.out.println(college);
            System.out.println(college);
            System.out.println(level);
            System.out.println(level);
            System.out.println(level);
            List<AccountTestRecord> testrecordList = testService.getTestRecordByCondition(clazz, grade, major, college, level);
            return new ResponseEntity<List<AccountTestRecord>>(testrecordList, HttpStatus.OK);
        } catch (TestServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    //管理员查看竞赛报名人数
    @RequestMapping(value = "/getContestregistionCount", method = RequestMethod.GET)
    public ResponseEntity<Integer> getContestregistionCount() {
        try {
            int count = 0;
            List<Testinfo> contestInfoList = testService.getContestInfoList();
            if (contestInfoList.size() != 0) {
                count = testService.getContestRegistionList(contestInfoList.get(0)).size();
            }
            return new ResponseEntity<Integer>(count, HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //根据考试Id显示考试试卷供教师批阅
    @RequestMapping(value = "/getPaperrecordByTestId", method = RequestMethod.POST,consumes = "application/json")
    public ResponseEntity<AccountPaperRecord> getPaperrecordByTestId(@RequestBody AdminTest adminTest) {
        try {
            int testId=adminTest.getTestId();
            List<Account> list=accountService.getAccountListByCondition(adminTest.getRolerange());
            List<Paperrecord> paperrecordList = new ArrayList<Paperrecord>();
            for(int i=0;i<list.size();i++){
                Paperrecord paperrecord=testService.getPaperrecordByStudentIdAndTestId(list.get(i).getStudentId(),testId);
                if(paperrecord!=null){
                    paperrecordList.add(paperrecord);
                }
            }
            if(paperrecordList.size()!=0) {
                Paperrecord paperrecord = paperrecordList.get(0);
                Testrecord testrecord = new Testrecord();
                testrecord.setTestId(testId);
                testrecord.setStudentId(paperrecord.getStudentId());
                Testtitle testtitle = testService.getTesttitleByTestrecord(testrecord);
                AccountPaperRecord accountPaperRecord = new AccountPaperRecord();
                Paper paper = new Paper();
                //考生信息
                Account account = new Account();
                account.setStudentId(testtitle.getStudentId());
                String[] shortAnswers = paperrecord.getShortAnswer().split("#");
                String[] caseAnswers = paperrecord.getCaseAnswer().split("#");
                String[] discussAnswers = paperrecord.getDiscussAnswer().split("#");
                List<Additiontitle> shortList = titleService.getAdditiontitleListByFormatString(testtitle.getShortIds());
                List<Additiontitle> caseList = titleService.getAdditiontitleListByFormatString(testtitle.getCaseIds());
                List<Additiontitle> discussList = titleService.getAdditiontitleListByFormatString(testtitle.getDiscussIds());
                for (int j = 0; j < shortList.size(); j++) {
                    Additiontitle additiontitle = shortList.get(j);
                    if(shortAnswers[j].equals("@hstc")){
                        shortAnswers[j]="";
                    }
                    additiontitle.setAnswer(shortAnswers[j]);
                }
                for (int j = 0; j < caseList.size(); j++) {
                    Additiontitle additiontitle = caseList.get(j);
                    if(caseAnswers[j].equals("@hstc")){
                        caseAnswers[j]="";
                    }
                    additiontitle.setAnswer(caseAnswers[j]);
                }
                for (int j = 0; j < discussList.size(); j++) {
                    Additiontitle additiontitle = discussList.get(j);
                    if(discussAnswers[j].equals("@hstc")){
                        discussAnswers[j]="";
                    }
                    additiontitle.setAnswer(discussAnswers[j]);
                }
                paper.setShortList(shortList);
                paper.setCaseList(caseList);
                paper.setDiscussList(discussList);
                accountPaperRecord.setPaper(paper);
                accountPaperRecord.setPaperrecord(paperrecord);
                accountPaperRecord.setAccount(accountService.getUserInfo(account));
                return new ResponseEntity<AccountPaperRecord>(accountPaperRecord, HttpStatus.OK);
            }else{
                return new ResponseEntity<AccountPaperRecord>(new AccountPaperRecord(), HttpStatus.OK);
            }
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        } catch (TitleServiceException e) {
            throw new CatchServiceException(e);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //根据学生学号显示考试试卷供教师批阅
    @RequestMapping(value = "/getPaperrecordByStudentId", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<AccountPaperRecord> getPaperrecordByStudentId(@RequestBody Testrecord testrecord) {
        try {
            Testtitle testtitle = testService.getTesttitleByTestrecord(testrecord);
            AccountPaperRecord accountPaperRecord = new AccountPaperRecord();
            Paper paper = new Paper();
            Paperrecord paperrecord = testService.getPaperrecordByStudentIdAndTestId(testrecord.getStudentId(), testrecord.getTestId());
            if(paperrecord!=null) {
                //考生信息
                Account account = new Account();
                account.setStudentId(testrecord.getStudentId());
                String[] shortAnswers = paperrecord.getShortAnswer().split("#");
                String[] caseAnswers = paperrecord.getCaseAnswer().split("#");
                String[] discussAnswers = paperrecord.getDiscussAnswer().split("#");
                List<Additiontitle> shortList = titleService.getAdditiontitleListByFormatString(testtitle.getShortIds());
                List<Additiontitle> caseList = titleService.getAdditiontitleListByFormatString(testtitle.getCaseIds());
                List<Additiontitle> discussList = titleService.getAdditiontitleListByFormatString(testtitle.getDiscussIds());
                for (int j = 0; j < shortList.size(); j++) {
                    Additiontitle additiontitle = shortList.get(j);
                    if (shortAnswers[j].equals("@hstc")) {
                        shortAnswers[j] = "";
                    }
                    additiontitle.setAnswer(shortAnswers[j]);
                }
                for (int j = 0; j < caseList.size(); j++) {
                    Additiontitle additiontitle = caseList.get(j);
                    if (caseAnswers[j].equals("@hstc")) {
                        caseAnswers[j] = "";
                    }
                    additiontitle.setAnswer(caseAnswers[j]);
                }
                for (int j = 0; j < discussList.size(); j++) {
                    Additiontitle additiontitle = discussList.get(j);
                    if (discussAnswers[j].equals("@hstc")) {
                        discussAnswers[j] = "";
                    }
                    additiontitle.setAnswer(discussAnswers[j]);
                }
                paper.setShortList(shortList);
                paper.setCaseList(caseList);
                paper.setDiscussList(discussList);
                accountPaperRecord.setPaper(paper);
                accountPaperRecord.setPaperrecord(paperrecord);
                accountPaperRecord.setAccount(accountService.getUserInfo(account));
                return new ResponseEntity<AccountPaperRecord>(accountPaperRecord, HttpStatus.OK);
            }else{
                return new ResponseEntity<AccountPaperRecord>(new AccountPaperRecord(), HttpStatus.OK);
            }
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        } catch (TitleServiceException e) {
            throw new CatchServiceException(e);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/submitCorrectPaper", method = RequestMethod.POST,consumes = "application/json")
    public ResponseEntity<Result> submitCorrectPaper(@RequestBody CorrectPaper correctPaper) {
        try {
            // Sunss在前台就应该要完成
            //插入分数
            Testrecord testrecord=new Testrecord();
            testrecord.setStudentId(correctPaper.getStudentId());
            testrecord.setTestId(correctPaper.getTestId());
            Testrecord testrecord1=testService.getTestRecord(testrecord);
            //更新paperrecord
            Paperrecord paperrecord=testService.getPaperrecordByStudentIdAndTestId(correctPaper.getStudentId(),
                    correctPaper.getTestId());
            paperrecord.setIsCorrected(1);
            paperrecord.setSubmitTime(new Timestamp(System.currentTimeMillis()));
//            int score=correctPaper.getScore()+paperrecord.getBlankScore();
            int score=paperrecord.getBlankScore();
            testrecord1.setScore(score);
            testService.updateTestRecord(testrecord1);
            testService.updatePaperrecord(paperrecord.getPaperId(),paperrecord);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    //判断批改时间
    @RequestMapping(value = "/getCorrectContestTime", method = RequestMethod.GET)
    public ResponseEntity<Result> getCorrectContestTime() {
        try {
            List<Testinfo> list=testService.getContestInfoList();
            if(list.size()==0){
                return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
            }else {
                Testinfo testinfo1 = list.get(0);
                if (testinfo1.getEndTime().before(new Timestamp(System.currentTimeMillis()))) {
                    List<Paperrecord> list1=testService.getPaperrecordByTestId(testinfo1.getTestId());
                    if(list1.size()==0){
                        return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
                    }else {
                        return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
                    }
                } else {
                    return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
                }
            }
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/getCorrectTestTime", method = RequestMethod.GET)
    public ResponseEntity<Result> getCorrectTestTime() {
        try {
            List<Testinfo> list=testService.getTestInfoList();
            if(list.size()==0){
                return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
            }else {
                Testinfo testinfo1 = list.get(0);
                if (testinfo1.getEndTime().before(new Timestamp(System.currentTimeMillis()))) {
                    List<Paperrecord> list1=testService.getPaperrecordByTestId(testinfo1.getTestId());
                    if(list1.size()==0){
                        return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
                    }else {
                        return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
                    }
                } else {
                    return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
                }
            }
        } catch (TestServiceException e) {
            throw new CatchServiceException(e);
        }
    }
}
