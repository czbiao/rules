package com.hstc.rules.domain;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by linjingshan on 17-6-9.
 */
@Entity
@Table(name = "notice", schema = "saverulessystem", catalog = "")
public class Notice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "notice_id")
    private int noticeId;
    @Column(name = "title")
    private String title;
    @Column(name = "content")
    private String content;
    @Column(name = "picture")
    private String picture;
    @Column(name = "submit_time")
    private Timestamp submitTime;
    @Column(name = "source")
    private String source;
    @Column(name = "type")
    private int type;

    public int getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(int noticeId) {
        this.noticeId = noticeId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Timestamp getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Timestamp submitTime) {
        this.submitTime = submitTime;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Notice notice = (Notice) o;

        if (noticeId != notice.noticeId) return false;
        if (type != notice.type) return false;
        if (title != null ? !title.equals(notice.title) : notice.title != null) return false;
        if (content != null ? !content.equals(notice.content) : notice.content != null) return false;
        if (picture != null ? !picture.equals(notice.picture) : notice.picture != null) return false;
        if (submitTime != null ? !submitTime.equals(notice.submitTime) : notice.submitTime != null) return false;
        if (source != null ? !source.equals(notice.source) : notice.source != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = noticeId;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (picture != null ? picture.hashCode() : 0);
        result = 31 * result + (submitTime != null ? submitTime.hashCode() : 0);
        result = 31 * result + (source != null ? source.hashCode() : 0);
        result = 31 * result + type;
        return result;
    }
}
