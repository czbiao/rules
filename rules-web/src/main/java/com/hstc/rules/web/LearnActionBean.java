package com.hstc.rules.web;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Clockin;
import com.hstc.rules.domain.Result;
import com.hstc.rules.exception.CatchServiceException;
import com.hstc.rules.exception.LearnServiceException;
import com.hstc.rules.service.LearnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by linjingshan on 17-6-12.
 */
@Controller
@RequestMapping(value = "/learn")
public class LearnActionBean extends AbstractActionBean{
    private LearnService learnService;
    @Autowired
    public LearnActionBean(LearnService learnService) {
        this.learnService = learnService;
    }
    @RequestMapping(value = "/clock", method = RequestMethod.GET)
    public String showClockForm() {
        return "clockForm";
    }

    @RequestMapping(value = "/clock", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> clock(@RequestBody Clockin clockin) {
        try {
            learnService.insertClock(clockin);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        }catch (LearnServiceException le) {
            throw new CatchServiceException(le);
        }
    }

    @RequestMapping(value = "upClock", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> upClock(@RequestBody Clockin clockin) {
        try{
            learnService.updateTodayClock(clockin);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        }catch (LearnServiceException le) {
            throw new CatchServiceException(le);
        }
    }

    @RequestMapping(value = "clockDetail", method = RequestMethod.GET)
    public ResponseEntity<Result> clockDetail(@RequestParam(value = "studentId") long studentId,
                                                  @RequestParam(value = "username") String username,
                                                  @RequestParam(value = "datetime") String datetime) {
        try {
            Account account = new Account();
            account.setStudentId(studentId);
            account.setUsername(username);
            Clockin clockin = learnService.getClockDetailByDay(account, Timestamp.valueOf(datetime));
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, clockin), HttpStatus.OK);
        }catch (LearnServiceException le) {
            throw new CatchServiceException(le);
        }
    }

    @RequestMapping(value = "clockList", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> clockList(@RequestBody Account account) {
        try {
            System.out.println(account.toString());
            List<Clockin> clockList = learnService.getAllClocks(account);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS, clockList), HttpStatus.OK);
        }catch (LearnServiceException le) {
            throw new CatchServiceException(le);
        }
    }
}
