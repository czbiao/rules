package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by linjingshan on 18-6-9.
 */
@Entity
@Table(name = "testinfo", schema = "saverulessystem", catalog = "")
public class Testinfo implements Serializable {
    @Column(name = "name")
    private String name;
    @Column(name = "type")
    private byte type;
    @Column(name = "grade")
    private int grade;
    @Id
    @Column(name = "test_id")
    private int testId;
    @Column(name = "start_time")
    private Timestamp startTime;
    @Column(name = "end_time")
    private Timestamp endTime;
    @Column(name = "duration")
    private int duration;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public byte getType() {
        return type;
    }

    public void setType(byte type) {
        this.type = type;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
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

    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Testinfo testinfo = (Testinfo) o;

        if (type != testinfo.type) return false;
        if (grade != testinfo.grade) return false;
        if (testId != testinfo.testId) return false;
        if (duration != testinfo.duration) return false;
        if (name != null ? !name.equals(testinfo.name) : testinfo.name != null) return false;
        if (startTime != null ? !startTime.equals(testinfo.startTime) : testinfo.startTime != null) return false;
        if (endTime != null ? !endTime.equals(testinfo.endTime) : testinfo.endTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (int) type;
        result = 31 * result + grade;
        result = 31 * result + testId;
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + duration;
        return result;
    }
}