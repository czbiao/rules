package com.hstc.rules.domain;

/**
 * Created by linjingshan on 2017/7/20.
 */
public class AccountPaperRecord {
    private Account account;
    private Paper paper;
    private Paperrecord paperrecord;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Paper getPaper() {
        return paper;
    }

    public void setPaper(Paper paper) {
        this.paper = paper;
    }

    public Paperrecord getPaperrecord() {
        return paperrecord;
    }

    public void setPaperrecord(Paperrecord paperrecord) {
        this.paperrecord = paperrecord;
    }
}
