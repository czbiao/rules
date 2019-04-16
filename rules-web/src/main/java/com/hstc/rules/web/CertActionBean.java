package com.hstc.rules.web;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Testinfo;
import com.hstc.rules.domain.Testrecord;
import com.hstc.rules.exception.CatchServiceException;
import com.hstc.rules.service.AccountService;
import com.hstc.rules.service.TestService;
import com.hstc.rules.utils.CertUtil;
import com.hstc.rules.utils.NetIOUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;

/**
 * Created by linjingshan on 2018/05/02 23:19.
 *
 * @version : 1.0
 */
@Controller
@RequestMapping(value = {"/cert"})
public class CertActionBean {

    private AccountService accountService;
    private TestService testService;

    @Autowired
    public CertActionBean(AccountService accountService, TestService testService) {
        this.accountService = accountService;
        this.testService = testService;
    }

    @RequestMapping(value = "/exportCert")
    public void genCert(@RequestParam(value = "realSId", required = true) String realSId,
                        @RequestParam(value = "studentId", required = true) long studentId,
                        HttpServletRequest request, HttpServletResponse response) {
        CertUtil.setCertOriginPath(request.getSession().getServletContext().getRealPath("img"));
        CertUtil.setCertSaveTemp(request.getSession().getServletContext().getRealPath("cert"));
        try {
            // 1.获取学生的学院、获取考试的分数
            Account tempUser = new Account();
            tempUser.setStudentId(studentId);
            Account userDetail = accountService.getUserInfo(tempUser);

            Testinfo contestInfo = testService.getContestInfoList().get(0);
            Testrecord param = new Testrecord();
            param.setStudentId(studentId);
            param.setTestId(contestInfo.getTestId());
            Testrecord completedRecord = testService.getTestRecord(param);

            if (!(userDetail != null && completedRecord.getScore() != null && completedRecord.getScore() > 70))
                return;
            // 2.条件符合后，>70分，调用生成图片的函数
            // 生成图片的思路就是先从img文件夹中读取原始图片，然后绘制，最后返回File对象

            System.out.println(userDetail.getCollege() + " " + userDetail.getUsername());
            File certImg = CertUtil.drawCert(userDetail.getCollege(), userDetail.getUsername(), realSId);
            // 3.调用下载模块下载
            NetIOUtil.downloadFile(certImg, response, true);
        }catch (Exception e){
            throw new CatchServiceException(e);
        }
    }
}
