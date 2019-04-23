package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by linjingshan on 2018-7-17.
 */
@Entity
@Table(name = "additiontitle", schema = "saverulessystem", catalog = "")
public class Additiontitle implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "title_id")
    private int titleId;
    @Column(name = "name")
    private String name;
    @Column(name = "type")
    private int type;
    @Column(name = "answer")
    private String answer;
    @Column(name = "score")
    private Integer score;

    public int getTitleId() {
        return titleId;
    }

    public void setTitleId(int titleId) {
        this.titleId = titleId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Additiontitle that = (Additiontitle) o;

        if (titleId != that.titleId) return false;
        if (type != that.type) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (answer != null ? !answer.equals(that.answer) : that.answer != null) return false;
        if (score != null ? !score.equals(that.score) : that.score != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = titleId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + type;
        result = 31 * result + (answer != null ? answer.hashCode() : 0);
        result = 31 * result + (score != null ? score.hashCode() : 0);
        return result;
    }
}
