package com.hstc.rules.domain;

/**
 * Created by linjingshan on 2018/8/17.
 */
public class CorrectPaper {
    private Long studentId;
    private int testId;
    private int score;

    public Long getStudentId() {
        return studentId;
    }

    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }

    public int getTestId() {
        return testId;
    }

    public void setTestId(int testId) {
        this.testId = testId;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
