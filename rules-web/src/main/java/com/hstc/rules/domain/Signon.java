package com.hstc.rules.domain;

import javax.persistence.*;

/**
 * Created by linjingshan on 2018-6-8.
 */
@Entity
@Table(name = "signon", schema = "saverulessystem", catalog = "")
@IdClass(SignonPK.class)
public class Signon {
    @Id
    @Column(name = "student_id")
    private long studentId;
    @Id
    @Column(name = "password")
    private String password;

    public long getStudentId() {
        return studentId;
    }

    public void setStudentId(long studentId) {
        this.studentId = studentId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
