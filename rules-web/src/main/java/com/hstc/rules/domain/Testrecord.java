package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by linjingshan on 2018/6/9.
 */
@Entity
@Table(name = "testrecord", schema = "saverulessystem", catalog = "")
public class Testrecord implements Serializable {
    @Column(name = "score")
    private Integer score;
    @Id
    @Column(name = "record_id")
    private int recordId;
    @Column(name = "student_id")
    private long studentId;
    @Column(name = "test_id")
    private int testId;
    @Column(name = "start_time")
    private Timestamp startTime;
    @Column(name = "submit_time")
    private Timestamp submitTime;

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public int getRecordId() {
        return recordId;
    }

    public void setRecordId(int recordId) {
        this.recordId = recordId;
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

    public Timestamp getStartTime() {
        return startTime;
    }

    public void setStartTime(Timestamp startTime) {
        this.startTime = startTime;
    }

    public Timestamp getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Timestamp submitTime) {
        this.submitTime = submitTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Testrecord that = (Testrecord) o;

        if (recordId != that.recordId) return false;
        if (studentId != that.studentId) return false;
        if (testId != that.testId) return false;
        if (score != null ? !score.equals(that.score) : that.score != null) return false;
        if (startTime != null ? !startTime.equals(that.startTime) : that.startTime != null) return false;
        if (submitTime != null ? !submitTime.equals(that.submitTime) : that.submitTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = score != null ? score.hashCode() : 0;
        result = 31 * result + recordId;
        result = 31 * result + (int) (studentId ^ (studentId >>> 32));
        result = 31 * result + testId;
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (submitTime != null ? submitTime.hashCode() : 0);
        return result;
    }
}