package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by linjingshan on 2018-6-9.
 */
@Entity
@Table(name = "wrongtitle", schema = "saverulessystem", catalog = "")
@IdClass(WrongtitlePK.class)
public class Wrongtitle implements Serializable {
    @Id
    @Column(name = "title_id")
    private Integer titleId;
    @Id
    @Column(name = "student_id")
    private long studentId;

    public Integer getTitleId() {
        return titleId;
    }

    public void setTitleId(Integer titleId) {
        this.titleId = titleId;
    }

    public long getStudentId() {
        return studentId;
    }

    public void setStudentId(long studentId) {
        this.studentId = studentId;
    }
}
