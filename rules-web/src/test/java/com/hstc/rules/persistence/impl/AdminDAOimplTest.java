package com.hstc.rules.persistence.impl;

import com.hstc.rules.domain.Admin;
import com.hstc.rules.persistence.AdminDAO;
import org.junit.Test;


import static junit.framework.TestCase.assertEquals;
/**
 * Created by linjingshan on 2017/6/10.
 */
public class AdminDAOimplTest {
    private AdminDAO adminDAO = new AdminDAOimpl();

    @Test
    public void testLogin() {
        Admin admin = new Admin();
        admin.setAdminId(1234);
        admin = adminDAO.Login(admin);
        assertEquals(admin.getPassword(),"1234");
    }
}
