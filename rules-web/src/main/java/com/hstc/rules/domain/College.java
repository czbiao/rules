package com.hstc.rules.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by linjingshan on 18-7-4.
 */
@Entity
@Table(name = "college", schema = "saverulessystem", catalog = "")
public class College implements Serializable {
    @Id
    @Column(name = "college_id")
    private int collegeId;
    @Column(name = "name")
    private String name;

    public College(){}

    public College(int collegeId, String name) {
        this.collegeId = collegeId;
        this.name = name;
    }

    public int getCollegeId() {
        return collegeId;
    }

    public void setCollegeId(int collegeId) {
        this.collegeId = collegeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
