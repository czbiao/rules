package com.hstc.rules.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by linjingshan on 18-6-8.
 */
@Entity
@Table(name = "userinfo", schema = "saverulessystem", catalog = "")
public class Account implements Serializable {
    @Id
    @Column(name = "student_id")
    private long studentId;
    @Column(name = "username")
    private String username;
    @Column(name = "sex")
    private byte sex;
    @Column(name = "clazz")
    private String clazz;
    @Column(name = "grade")
    private int grade;
    @Column(name = "major")
    private String major;
    @Column(name = "college")
    private String college;

    public Account() {}

    public Account(long studentId, String username, byte sex, String clazz, int grade, String college) {
        this.studentId = studentId;
        this.username = username;
        this.sex = sex;
        this.clazz = clazz;
        this.grade = grade;
        this.college = college;
    }

    public Account(long studentId, String username, byte sex, String clazz, int grade, String major, String college) {
        this.studentId = studentId;
        this.username = username;
        this.sex = sex;
        this.clazz = clazz;
        this.grade = grade;
        this.major = major;
        this.college = college;
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

    public byte getSex() {
        return sex;
    }

    public void setSex(byte sex) {
        this.sex = sex;
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

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String toString() {
        return "studentId:" + this.getStudentId() + "\n" +
                "username:" + this.getUsername() + "\n" +
                "sex:" + this.getSex() + "\n" +
                "clazz:" + this.getClazz() + "\n" +
                "grade:" + this.getGrade() + "\n" +
                "college:" + this.getCollege() + "\n" +
                "school:" + this.getMajor();
    }
}