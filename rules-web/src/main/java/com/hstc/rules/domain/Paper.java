package com.hstc.rules.domain;

import java.util.List;

/**
 * Created by linjingshan on 17-7-17.
 */
public class Paper {

    private List<Title> titleList;  // 选择题列表
    private List<Additiontitle> blanksList; // 填空题列表
    private List<Additiontitle> judgeList; // 判断题列表
    private List<Additiontitle> shortList; // 简答题列表
    private List<Additiontitle> caseList; // 案例分析题
    private List<Additiontitle> discussList; // 论述题

    public Paper() {
    }

    public Paper(List<Title> titleList, List<Additiontitle> blanksList, List<Additiontitle> judgeList, List<Additiontitle> shortList, List<Additiontitle> caseList, List<Additiontitle> discussList) {
        this.titleList = titleList;
        this.blanksList = blanksList;
        this.judgeList = judgeList;
        this.shortList = shortList;
        this.caseList = caseList;
        this.discussList = discussList;
    }

    public List<Title> getTitleList() {
        return titleList;
    }

    public void setTitleList(List<Title> titleList) {
        this.titleList = titleList;
    }

    public List<Additiontitle> getBlanksList() {
        return blanksList;
    }

    public void setBlanksList(List<Additiontitle> blanksList) {
        this.blanksList = blanksList;
    }

    public List<Additiontitle> getJudgeList() {
        return judgeList;
    }

    public void setJudgeList(List<Additiontitle> judgeList) {
        this.judgeList = judgeList;
    }

    public List<Additiontitle> getShortList() {
        return shortList;
    }

    public void setShortList(List<Additiontitle> shortList) {
        this.shortList = shortList;
    }

    public List<Additiontitle> getCaseList() {
        return caseList;
    }

    public void setCaseList(List<Additiontitle> caseList) {
        this.caseList = caseList;
    }

    public List<Additiontitle> getDiscussList() {
        return discussList;
    }

    public void setDiscussList(List<Additiontitle> discussList) {
        this.discussList = discussList;
    }
}
