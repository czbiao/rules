package com.hstc.rules.domain;

/**
 * Created by linjingshan on 2018-7-6.
 */
public class AccountTestRecord {
    private long studentId;
    private String username;
    private String clazz;
    private int grade;
    private String major;
    private String college;
    private Integer score;

    public AccountTestRecord(long studentId, String username, String clazz, int grade, String major, String college, Integer score) {
        this.studentId = studentId;
        this.username = username;
        this.clazz = clazz;
        this.grade = grade;
        this.major = major;
        this.college = college;
        this.score = score;
    }

    public long getStudentId() {
        return studentId;
    }

    public void setStudentId(long studentId) {
        this.studentId = studentId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getClazz() {
        return clazz;
    }

    public void setClazz(String clazz) {
        this.clazz = clazz;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }
}
