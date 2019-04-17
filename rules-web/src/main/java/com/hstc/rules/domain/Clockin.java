package com.hstc.rules.domain;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by linjingshan on 18-6-9.
 */
@Entity
@Table(name = "clockin", schema = "saverulessystem", catalog = "")
public class Clockin {
    @Column(name = "comment")
    private String comment;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "clock_id")
    private int clockId;
    @Column(name = "student_id")
    private Long studentId;
    @Column(name = "clock_day")
    private Timestamp clockDay;
    @Column(name = "duration")
    private Integer duration;
    @Column(name = "title_num")
    private Integer titleNum;

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getClockId() {
        return clockId;
    }

    public void setClockId(int clockId) {
        this.clockId = clockId;
    }

    public Long getStudentId() {
        return studentId;
    }

    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }

    public Timestamp getClockDay() {
        return clockDay;
    }

    public void setClockDay(Timestamp clockDay) {
        this.clockDay = clockDay;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getTitleNum() {
        return titleNum;
    }

    public void setTitleNum(Integer titleNum) {
        this.titleNum = titleNum;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Clockin clockin = (Clockin) o;

        if (clockId != clockin.clockId) return false;
        if (comment != null ? !comment.equals(clockin.comment) : clockin.comment != null) return false;
        if (studentId != null ? !studentId.equals(clockin.studentId) : clockin.studentId != null) return false;
        if (clockDay != null ? !clockDay.equals(clockin.clockDay) : clockin.clockDay != null) return false;
        if (duration != null ? !duration.equals(clockin.duration) : clockin.duration != null) return false;
        if (titleNum != null ? !titleNum.equals(clockin.titleNum) : clockin.titleNum != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = comment != null ? comment.hashCode() : 0;
        result = 31 * result + clockId;
        result = 31 * result + (studentId != null ? studentId.hashCode() : 0);
        result = 31 * result + (clockDay != null ? clockDay.hashCode() : 0);
        result = 31 * result + (duration != null ? duration.hashCode() : 0);
        result = 31 * result + (titleNum != null ? titleNum.hashCode() : 0);
        return result;
    }
}
