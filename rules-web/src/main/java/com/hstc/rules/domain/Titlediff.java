package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by linjingshan on 17-6-9.
 */
@Entity
@Table(name = "titlediff", schema = "saverulessystem", catalog = "")
public class Titlediff implements Serializable {
    @Column(name = "name")
    private String name;
    @Id
    @Column(name = "diff_id")
    private int diffId;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDiffId() {
        return diffId;
    }

    public void setDiffId(int diffId) {
        this.diffId = diffId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Titlediff titlediff = (Titlediff) o;

        if (diffId != titlediff.diffId) return false;
        if (name != null ? !name.equals(titlediff.name) : titlediff.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + diffId;
        return result;
    }
}
