package com.hstc.rules.domain;

import javax.persistence.*;

/**
 * Created by linjingshan on 17-6-9.
 */
@Entity
@Table(name = "admin", schema = "saverulessystem", catalog = "")
public class Admin {
    @Id
    @Column(name = "admin_id")
    private int adminId;
    @Column(name = "account")
    private String account;
    @Column(name = "password")
    private String password;
    @Column(name = "username")
    private String username;
    @Column(name = "role")
    private int role;
    @Column(name="rolerange")
    private String rolerange;

    public String getRolerange() {
        return rolerange;
    }

    public void setRolerange(String rolerange) {
        this.rolerange = rolerange;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Admin admin = (Admin) o;

        if (adminId != admin.adminId) return false;
        if (account != null ? !account.equals(admin.account) : admin.account != null) return false;
        if (password != null ? !password.equals(admin.password) : admin.password != null) return false;
        if (username != null ? !username.equals(admin.username) : admin.username != null) return false;
        if (role != admin.role) return false;
        return true;
    }

    @Override
    public int hashCode() {
        int result = adminId;
        result = 31 * result + (account != null ? account.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + role;
        return result;
    }
}
