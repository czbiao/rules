package com.hstc.rules.domain;

import java.util.List;

/**
 * Created by linjingshan on 2018-6-12.
 */
public class AccountTitles {
    private Account account;
    private List<Title> titleList;
    private List<Additiontitle> additiontitleList;
    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Title> getTitleList() {
        return titleList;
    }

    public void setTitleList(List<Title> titleList) {
        this.titleList = titleList;
    }

    public List<Additiontitle> getAdditiontitleList() {
        return additiontitleList;
    }

    public void setAdditiontitleList(List<Additiontitle> additiontitleList) {
        this.additiontitleList = additiontitleList;
    }
}
