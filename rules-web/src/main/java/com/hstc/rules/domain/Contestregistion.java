package com.hstc.rules.domain;

import javax.persistence.*;

/**
 * Created by linjingshan on 17-6-9.
 */
@Entity
@Table(name = "contestregistion", schema = "saverulessystem", catalog = "")
@IdClass(ContestregistionPK.class)
public class Contestregistion {
    @Id
    @Column(name = "student_id")
    private long studentId;
    @Id
    @Column(name = "test_id")
    private int testId;
    @Column(name = "status")
    private int status;

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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}