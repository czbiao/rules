package com.hstc.rules.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by linjingshan on 18-7-4.
 */
@Entity
@Table(name = "major", schema = "saverulessystem", catalog = "")
public class Major {
    @Column(name = "college_id")
    private int collegeId;
    @Id
    @Column(name = "major_id")
    private int majorId;
    @Column(name = "name")
    private String name;

    public Major(){}

    public Major(int collegeId, int majorId, String name) {
        this.collegeId = collegeId;
        this.majorId = majorId;
        this.name = name;
    }

    public int getCollegeId() {
        return collegeId;
    }

    public void setCollegeId(int collegeId) {
        this.collegeId = collegeId;
    }

    public int getMajorId() {
        return majorId;
    }

    public void setMajorId(int majorId) {
        this.majorId = majorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
