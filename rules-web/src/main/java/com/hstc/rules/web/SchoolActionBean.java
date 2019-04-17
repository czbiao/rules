package com.hstc.rules.web;

import com.hstc.rules.domain.Clazz;
import com.hstc.rules.domain.College;
import com.hstc.rules.domain.Major;
import com.hstc.rules.exception.CatchServiceException;
import com.hstc.rules.exception.SchoolServiceException;
import com.hstc.rules.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by linjingshan on 18-7-4.
 */
@Controller
@RequestMapping("/school")
public class SchoolActionBean extends AbstractActionBean {

    private SchoolService schoolService;

    @Autowired
    public SchoolActionBean(SchoolService schoolService) {
        this.schoolService = schoolService;
    }

    @RequestMapping(value = "/collegeList", method = RequestMethod.GET)
    public ResponseEntity<List<College>> getAllCollege() {
        try {
            return new ResponseEntity<List<College>>(schoolService.getCollegeList(), HttpStatus.OK);
        }catch (SchoolServiceException se) {
            throw new CatchServiceException(se);
        }
    }

    @RequestMapping(value = "/majorList", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<List<Major>> getMajorList(@RequestBody College college) {
        try {
            return new ResponseEntity<List<Major>>(schoolService.getMajorList(college),HttpStatus.OK);
        }catch (SchoolServiceException se) {
            throw new CatchServiceException(se);
        }
    }

    @RequestMapping(value = "clazzList", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<List<Clazz>> getClazzList(@RequestBody Major major) {
        try {
            return new ResponseEntity<List<Clazz>>(schoolService.getClazzList(major),HttpStatus.OK);
        }catch (SchoolServiceException se) {
            throw new CatchServiceException(se);
        }
    }
}
