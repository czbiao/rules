package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by linjingshan on 18-7-2.
 */
@Entity
@Table(name = "testtitle", schema = "saverulessystem", catalog = "")
@IdClass(TesttitlePK.class)
public class Testtitle implements Serializable {
    @Id
    @Column(name = "student_id")
    private long studentId;
    @Id
    @Column(name = "test_id")
    private int testId;
    @Column(name = "title_ids")
    private String titleIds;
    @Column(name = "blank_ids")
    private String blankIds;
    @Column(name = "judge_ids")
    private String judgeIds;
    @Column(name = "short_ids")
    private String shortIds;
    @Column(name = "case_ids")
    private String caseIds;
    @Column(name = "discuss_ids")
    private String discussIds;

    public long getStudentId() {
        return studentId;
    }

    public void setStudentId(long studentId) {
        this.studentId = studentId;
    }

    public int getTestId() {
        return testId;
    }

    public void setTestId(int testId) {
        this.testId = testId;
    }

    public String getTitleIds() {
        return titleIds;
    }

    public void setTitleIds(String titleIds) {
        this.titleIds = titleIds;
    }

    public String getBlankIds() {
        return blankIds;
    }

    public void setBlankIds(String blankIds) {
        this.blankIds = blankIds;
    }

    public String getJudgeIds() {
        return judgeIds;
    }

    public void setJudgeIds(String judgeIds) {
        this.judgeIds = judgeIds;
    }

    public String getShortIds() {
        return shortIds;
    }

    public void setShortIds(String shortIds) {
        this.shortIds = shortIds;
    }

    public String getCaseIds() {
        return caseIds;
    }

    public void setCaseIds(String caseIds) {
        this.caseIds = caseIds;
    }

    public String getDiscussIds() {
        return discussIds;
    }

    public void setDiscussIds(String discussIds) {
        this.discussIds = discussIds;
    }
}
