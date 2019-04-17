package com.hstc.rules.web;

import com.hstc.rules.domain.*;
import com.hstc.rules.exception.CatchServiceException;
import com.hstc.rules.exception.TitleServiceException;
import com.hstc.rules.service.TitleService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by linjingshan on 18-6-12.
 */
@Controller
@RequestMapping(value = "/title")
public class TitleActionBean extends AbstractActionBean {
    private TitleService titleService;

    @Autowired
    public TitleActionBean(TitleService titleService) {
        this.titleService = titleService;
    }

    /**
     * 练习模块返回指定类型试题
     *
     * @param page
     * @param count
     * @param type  默认为0可不指定，代表选择题。1,2,3,4,5,6分别对应其他类型题目
     * @return
     */
    @RequestMapping(value = "/practice", method = RequestMethod.GET)
    public ResponseEntity<Result> practice(
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "count", defaultValue = "10") int count,
            @RequestParam(value = "type", defaultValue = "0") int type) {
        try {
            List titleList = null;
            if (type == 0)
                titleList = titleService.getTitleListByPage(page, count);
            else
                titleList = titleService.getTitleListByTypeAndPage(page, count, type);
            System.out.println("page" + page + "count" + count + "type" + type);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, titleList), HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }


    /**
     * 练习模块提交选择、填空、判断试题
     *
     * @param accountTitles
     * @return
     */
    // Sunss 填空并没有提交啊
//    @RequestMapping(value = "/submit", method = RequestMethod.POST, consumes = "application/json")
//    public ResponseEntity<Result> practiceAnswer(@RequestBody AccountTitles accountTitles) {
//        try {
//            List checkedTitleList = null;
//            if (accountTitles.getTitleList() != null)
//                checkedTitleList = titleService.submitTitleList(accountTitles.getAccount(), accountTitles.getTitleList());
//            else
//                checkedTitleList = titleService.submitAdditionList(accountTitles.getAccount(), accountTitles.getAdditiontitleList());
//            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, checkedTitleList), HttpStatus.OK);
//        } catch (TitleServiceException te) {
//            throw new CatchServiceException(te);
//        }
//    }
    // 该方法只接受练习模块的提交
    @RequestMapping(value = "/practiceAnswer", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Paper> practiceAnswer(@RequestBody AccountTitles accountTitles) {
        try {
            Paper paper = new Paper();
            List checkedTitleList = null;
            if (!checkPracticeSubmit(accountTitles))
                return new ResponseEntity<Paper>((Paper) null, HttpStatus.OK);

            if (accountTitles.getTitleList() != null){
                checkedTitleList = titleService.submitTitleList2(accountTitles.getTitleList());
                paper.setTitleList(checkedTitleList);
            } else {
                checkedTitleList = titleService.submitAdditionList(accountTitles.getAccount(), accountTitles.getAdditiontitleList());
                paper.setBlanksList(checkedTitleList);
            }
            return new ResponseEntity<Paper>(paper, HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    private boolean checkPracticeSubmit(AccountTitles accountTitles) {
        List<Title> titleList = null;
        List<Additiontitle> additiontitles = null;
        boolean isPractice = true;
        if ((titleList = accountTitles.getTitleList()) != null) {
            if (titleList.get(titleList.size()-1).getTitleId() - titleList.get(0).getTitleId() != 9)
                isPractice = false;
        }

        if (isPractice && (additiontitles = accountTitles.getAdditiontitleList()) != null) {
            if (additiontitles.get(additiontitles.size()-1).getTitleId() - additiontitles.get(0).getTitleId() != 9)
                isPractice = false;
        }

        return isPractice;
    }

    @RequestMapping(value = "/wrongList", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> wrongList(@RequestBody Account account) {
        try {
            List<Wrongtitle> wrongList = titleService.getWrongTitleListByStudentId(account);
            Set<Integer> idList = idListFromWrongtitles(wrongList);
            List<Title> titleList = titleService.getTitleListByTitleIds(idList);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, titleList), HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    @RequestMapping(value = "/item", method = RequestMethod.POST)
    public ResponseEntity<Result> item(@RequestBody Title title) {
        try {
            Title title1 = titleService.getTitle(title);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, title1), HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    @RequestMapping(value = "/atitleItem", method = RequestMethod.POST)
    public ResponseEntity<Result> item(@RequestBody Additiontitle title) {
        try {
            Additiontitle title1 = titleService.getTitle(title);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, title1), HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    /********************************管理员********************************/

    @RequestMapping(value = "addTitle", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> addTitle(@RequestBody Title title) {
        try {
            titleService.insertTitle(title);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    @RequestMapping(value = "addAdditiontitle", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> addAdditiontitle(@RequestBody Additiontitle additiontitle) {
        try {
            titleService.insertTitle(additiontitle);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    @RequestMapping(value = "addTitles", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> addTitles(@RequestBody List<Title> titleList) {
        try {
            titleService.insertTitleList(titleList);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    @RequestMapping(value = "addAdditionTitles", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> addAdditionTitles(@RequestBody List<Additiontitle> additiontitles) {
        try {
            titleService.insertAdditionTitleList(additiontitles);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (TitleServiceException te) {
            throw new CatchServiceException(te);
        }
    }

    private Set<Integer> idListFromWrongtitles(List<Wrongtitle> wrongList) {
        Set<Integer> idList = new HashSet<Integer>();
        for (int i = 0; i < wrongList.size(); i++) {
            idList.add(wrongList.get(i).getTitleId());
        }
        return idList;
    }
}
