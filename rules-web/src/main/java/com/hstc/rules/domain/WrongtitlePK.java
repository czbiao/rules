package com.hstc.rules.domain;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by linjingshan on 17-6-9.
 */
public class WrongtitlePK implements Serializable {
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WrongtitlePK that = (WrongtitlePK) o;

        if (studentId != that.studentId) return false;
        if (titleId != null ? !titleId.equals(that.titleId) : that.titleId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = titleId != null ? titleId.hashCode() : 0;
        result = 31 * result + (int) (studentId ^ (studentId >>> 32));
        return result;
    }
}
