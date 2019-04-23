package com.hstc.rules.domain;

import javax.persistence.*;

/**
 * Created by linjingshan on 2018-6-9.
 */
@Entity
@Table(name = "integral", schema = "saverulessystem", catalog = "")
@IdClass(IntegralPK.class)
public class Integral {
    @Id
    @Column(name = "student_id")
    private long studentId;
    @Id
    @Column(name = "integral_num")
    private Integer integralNum;

    public long getStudentId() {
        return studentId;
    }

    public void setStudentId(long studentId) {
        this.studentId = studentId;
    }

    public Integer getIntegralNum() {
        return integralNum;
    }

    public void setIntegralNum(Integer integralNum) {
        this.integralNum = integralNum;
    }
}
