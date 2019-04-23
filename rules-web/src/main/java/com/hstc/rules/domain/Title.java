package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by linjingshan on 2018-6-9.
 */
@Entity
@Table(name = "title", schema = "saverulessystem", catalog = "")
public class Title implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "title_id")
    private int titleId;
    @Column(name = "name")
    private String name;
    @Column(name = "diff_id")
    private int diffId;
    @Column(name = "score")
    private int score;
    @OneToMany(targetEntity = Option.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "title_id")
    @OrderBy("optionId ASC")
    private Set<Option> options;

    public Title() {
    }

    public Title(String name, int diffId, int score) {
        this.name = name;
        this.diffId = diffId;
        this.score = score;
    }

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

    public int getDiffId() {
        return diffId;
    }

    public void setDiffId(int diffId) {
        this.diffId = diffId;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public Set<Option> getOptions() {
        return options;
    }

    public void setOptions(Set<Option> options) {
        this.options = options;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Title title = (Title) o;

        if (titleId != title.titleId) return false;
        if (diffId != title.diffId) return false;
        if (score != title.score) return false;
        if (name != null ? !name.equals(title.name) : title.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = titleId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + diffId;
        result = 31 * result + score;
        return result;
    }
}
