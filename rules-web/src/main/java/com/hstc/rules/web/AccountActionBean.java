package com.hstc.rules.web;

import com.hstc.rules.domain.*;
import com.hstc.rules.exception.AccountServiceException;
import com.hstc.rules.exception.CatchServiceException;
import com.hstc.rules.service.AccountService;
import com.hstc.rules.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created by linjingshan on 18-6-4.
 */
@Controller
@RequestMapping(value = {"/account"})
public class AccountActionBean extends AbstractActionBean {

    private AccountService accountService;
    private MailService mailService;

    @Autowired
    public AccountActionBean(AccountService accountService, MailService mailService) {
        this.accountService = accountService;
        this.mailService = mailService;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginForm() throws IOException {
        return "loginForm";
    }

    @RequestMapping(value = "/adminLoginForm", method = RequestMethod.GET)
    public String showadminLoginForm() {
        return "adminLogin";
    }

    @RequestMapping(value = "/backstage", method = RequestMethod.POST)
    public String showBackstageForm(String account, String password,ModelMap modelMap) {
        try {
            Admin admin = new Admin();
            admin.setAccount(account);
            admin.setPassword(password);
            Admin admin1 = accountService.login(admin);
            if(admin1==null){
                modelMap.addAttribute("msg","账号或密码错误");
                return "adminLogin";
            }else{
                modelMap.addAttribute("admin",admin1);
                return "Backstage";
            }
        }catch (AccountServiceException e){
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Account> login(@RequestBody Signon signon) {
        try {
            Account account1 = accountService.login(signon);
            return new ResponseEntity<Account>(account1, HttpStatus.OK);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseEntity<Account> logintest(
            @RequestParam(value = "studentId") long studentId,
            @RequestParam(value = "password") String password) {
        try {
            Account account = accountService.login(studentId, password);
            return new ResponseEntity<Account>(account, HttpStatus.OK);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/adminLogin", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Admin> adminLogin(@RequestBody Admin admin) {
        try {
            Admin admin1=accountService.login(admin);
            return new ResponseEntity<Admin>(admin1, HttpStatus.OK);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/insertAdmin", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> insertAdmin(@RequestBody Admin admin) {
        try {
            Admin admin1=accountService.login(admin);
            if(admin1==null) {
                System.out.println(admin1);
                accountService.insertAdmin(admin);
                return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
            }else{
                return new ResponseEntity<Result>(new Result(Result.RESULT_ERROR), HttpStatus.OK);
            }
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/registerForInfo", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> register(@RequestBody Account account) {
        try {
            accountService.insertUser(account);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/registerForAccount", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> register(@RequestBody Signon signon) {
        try {
            accountService.insertSignon(signon);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/insertFeedback", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> insertFeedback(@RequestBody Feedback feedback) {
        try {
            feedback.setSubmitTime(new Timestamp(System.currentTimeMillis()));
            accountService.insertFeedback(feedback);

            final Feedback feedback1 = feedback;
            // linjingshan 2018年05月05日18:27:53 添加自动回复和通知功能
            new Thread(new Runnable() {
                public void run() {
                    mailService.autoReply(feedback1);
                    mailService.forwardFeedback(feedback1);
                }
            }).start();

            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/getFeedbackList", method = RequestMethod.GET)
    public ResponseEntity<List<Feedback>> getFeedbackList() {
        try {
            List<Feedback> list=accountService.getFeedbackList();
            return new ResponseEntity<List<Feedback>>(list, HttpStatus.OK);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }
    
        // 2018/04/22添加 只用于批量添加AccountInfo
    @RequestMapping(value = "/insertAccount", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> register(@RequestBody List<Account> accountList) {
        try {
            accountService.insertUserList(accountList);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (AccountServiceException e) {
            throw new CatchServiceException(e);
        }
    }
}
