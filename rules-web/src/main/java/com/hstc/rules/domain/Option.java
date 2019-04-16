package com.hstc.rules.domain;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by linjingshan on 17-6-9.
 */
@Entity
@Table(name = "choice", schema = "saverulessystem", catalog = "")
public class Option implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "option_id")
    private int optionId;
    @Column(name = "title_id")
    private int titleId;
    @Column(name = "content")
    private String content;
    @Column(name = "checked")
    private byte checked;

    public int getOptionId() {
        return optionId;
    }

    public void setOptionId(int optionId) {
        this.optionId = optionId;
    }

    public int getTitleId() {
        return titleId;
    }

    public void setTitleId(int titleId) {
        this.titleId = titleId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public byte getChecked() {
        return checked;
    }

    public void setChecked(byte checked) {
        this.checked = checked;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Option option = (Option) o;

        if (optionId != option.optionId) return false;
        if (checked != option.checked) return false;
        if (content != null ? !content.equals(option.content) : option.content != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = optionId;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (int) checked;
        return result;
    }
}
