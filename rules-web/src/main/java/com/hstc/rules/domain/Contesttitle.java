package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by linjingshan on 18-7-17.
 */
@Entity
@Table(name = "contesttitle", schema = "saverulessystem", catalog = "")
public class Contesttitle implements Serializable {
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Contesttitle that = (Contesttitle) o;

        if (testId != that.testId) return false;
        if (titleIds != null ? !titleIds.equals(that.titleIds) : that.titleIds != null) return false;
        if (blankIds != null ? !blankIds.equals(that.blankIds) : that.blankIds != null) return false;
        if (judgeIds != null ? !judgeIds.equals(that.judgeIds) : that.judgeIds != null) return false;
        if (shortIds != null ? !shortIds.equals(that.shortIds) : that.shortIds != null) return false;
        if (caseIds != null ? !caseIds.equals(that.caseIds) : that.caseIds != null) return false;
        if (discussIds != null ? !discussIds.equals(that.discussIds) : that.discussIds != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = testId;
        result = 31 * result + (titleIds != null ? titleIds.hashCode() : 0);
        result = 31 * result + (blankIds != null ? blankIds.hashCode() : 0);
        result = 31 * result + (judgeIds != null ? judgeIds.hashCode() : 0);
        result = 31 * result + (shortIds != null ? shortIds.hashCode() : 0);
        result = 31 * result + (caseIds != null ? caseIds.hashCode() : 0);
        result = 31 * result + (discussIds != null ? discussIds.hashCode() : 0);
        return result;
    }
}
