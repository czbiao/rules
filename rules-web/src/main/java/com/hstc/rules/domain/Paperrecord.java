package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by linjingshan on 17-7-17.
 */
@Entity
@Table(name = "paperrecord", schema = "saverulessystem", catalog = "")
public class Paperrecord implements Serializable {
    @Id
    @Column(name = "paper_id")
    private int paperId;
    @Column(name = "student_id")
    private long studentId;
    @Column(name = "test_id")
    private int testId;
    @Column(name = "submit_time")
    private Timestamp submitTime;
    @Column(name = "choice_score")
    private Integer choiceScore;
    @Column(name = "blank_score")
    private Integer blankScore;
    @Column(name = "judge_score")
    private Integer judgeScore;
    @Column(name = "short_answer")
    private String shortAnswer;
    @Column(name = "case_answer")
    private String caseAnswer;
    @Column(name = "discuss_answer")
    private String discussAnswer;
    @Column(name = "is_corrected")
    private int isCorrected;//0未批改 1已批改

    public int getPaperId() {
        return paperId;
    }

    public void setPaperId(int paperId) {
        this.paperId = paperId;
    }

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

    public Timestamp getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Timestamp submitTime) {
        this.submitTime = submitTime;
    }

    public Integer getChoiceScore() {
        return choiceScore;
    }

    public void setChoiceScore(Integer choiceScore) {
        this.choiceScore = choiceScore;
    }

    public Integer getBlankScore() {
        return blankScore;
    }

    public void setBlankScore(Integer blankScore) {
        this.blankScore = blankScore;
    }

    public Integer getJudgeScore() {
        return judgeScore;
    }

    public void setJudgeScore(Integer judgeScore) {
        this.judgeScore = judgeScore;
    }

    public String getShortAnswer() {
        return shortAnswer;
    }

    public void setShortAnswer(String shortAnswer) {
        this.shortAnswer = shortAnswer;
    }

    public String getCaseAnswer() {
        return caseAnswer;
    }

    public void setCaseAnswer(String caseAnswer) {
        this.caseAnswer = caseAnswer;
    }

    public String getDiscussAnswer() {
        return discussAnswer;
    }

    public void setDiscussAnswer(String discussAnswer) {
        this.discussAnswer = discussAnswer;
    }

    public int getIsCorrected() {
        return isCorrected;
    }

    public void setIsCorrected(int isCorrected) {
        this.isCorrected = isCorrected;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Paperrecord that = (Paperrecord) o;

        if (paperId != that.paperId) return false;
        if (studentId != that.studentId) return false;
        if (testId != that.testId) return false;
        if (submitTime != null ? !submitTime.equals(that.submitTime) : that.submitTime != null) return false;
        if (choiceScore != null ? !choiceScore.equals(that.choiceScore) : that.choiceScore != null) return false;
        if (blankScore != null ? !blankScore.equals(that.blankScore) : that.blankScore != null) return false;
        if (judgeScore != null ? !judgeScore.equals(that.judgeScore) : that.judgeScore != null) return false;
        if (shortAnswer != null ? !shortAnswer.equals(that.shortAnswer) : that.shortAnswer != null) return false;
        if (caseAnswer != null ? !caseAnswer.equals(that.caseAnswer) : that.caseAnswer != null) return false;
        if (discussAnswer != null ? !discussAnswer.equals(that.discussAnswer) : that.discussAnswer != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = paperId;
        result = 31 * result + (int) (studentId ^ (studentId >>> 32));
        result = 31 * result + testId;
        result = 31 * result + (submitTime != null ? submitTime.hashCode() : 0);
        result = 31 * result + (choiceScore != null ? choiceScore.hashCode() : 0);
        result = 31 * result + (blankScore != null ? blankScore.hashCode() : 0);
        result = 31 * result + (judgeScore != null ? judgeScore.hashCode() : 0);
        result = 31 * result + (shortAnswer != null ? shortAnswer.hashCode() : 0);
        result = 31 * result + (caseAnswer != null ? caseAnswer.hashCode() : 0);
        result = 31 * result + (discussAnswer != null ? discussAnswer.hashCode() : 0);
        return result;
    }
}
