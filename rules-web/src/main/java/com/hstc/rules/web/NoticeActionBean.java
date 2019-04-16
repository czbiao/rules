package com.hstc.rules.web;

import com.hstc.rules.domain.Notice;
import com.hstc.rules.domain.Result;
import com.hstc.rules.exception.CatchServiceException;
import com.hstc.rules.exception.NoticeServiceException;
import com.hstc.rules.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * Created by CMM on 2017/6/12.
 */
@Controller
@RequestMapping(value = {"/notice"})
public class NoticeActionBean extends AbstractActionBean {
    private NoticeService noticeService;

    @Autowired
    public NoticeActionBean(NoticeService noticeService) {
        this.noticeService = noticeService;
    }

    @RequestMapping(value = "/getPictureNotice", method = RequestMethod.GET)
    public ResponseEntity<List<Notice>> getPictureNotice() {
        try {
            List<Notice> noticeList = noticeService.getPictrueNoticeList();
            return new ResponseEntity<List<Notice>>(noticeList, HttpStatus.OK);
        } catch (NoticeServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/getAllTextNotice", method = RequestMethod.GET)
    public ResponseEntity<List<Notice>> getTextPictureNotice() {
        try {
            List<Notice> noticeList = noticeService.getTextNoticeList();
            return new ResponseEntity<List<Notice>>(noticeList, HttpStatus.OK);
        } catch (NoticeServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/getTextNotice", method = RequestMethod.GET)
    public ResponseEntity<List<Notice>> getTextPictureNotice(@RequestParam int offset, @RequestParam int count) {
        try {
            List<Notice> noticeList = noticeService.getTextListByPage(offset, count);
            return new ResponseEntity<List<Notice>>(noticeList, HttpStatus.OK);
        } catch (NoticeServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/getNotice", method = RequestMethod.GET)
    public ResponseEntity<Notice> getNotice(@RequestParam int noticeId) {
        try {
            Notice notice = noticeService.getNotice(noticeId);
            return new ResponseEntity<Notice>(notice, HttpStatus.OK);
        } catch (NoticeServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/publishNotice", method = RequestMethod.POST)
    public ResponseEntity<Result> publishNotice(@RequestPart("noticePicture") MultipartFile noticePicture,
                                                Notice notice,
                                                HttpServletRequest request) {
        try {
            String path = request.getSession().getServletContext().getRealPath("img");
            if (!noticePicture.isEmpty()) {
                String fileName = noticePicture.getOriginalFilename();
                String fileNameStr = (new Date().getTime()) + "_" + fileName;
                File targetFile = new File(path, fileNameStr);
                if (!targetFile.exists()) {
                    targetFile.createNewFile();
                }
                noticePicture.transferTo(targetFile);
                notice.setPicture("img/" + fileNameStr);
                notice.setType(1);
            }else {
                notice.setType(0);
            }
            notice.setSubmitTime(new Timestamp(System.currentTimeMillis()));
            noticeService.publishNotice(notice);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (NoticeServiceException e) {
            throw new CatchServiceException(e);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/uploadPicture", method = RequestMethod.POST)
    public ResponseEntity<Result> uploadPicture(@RequestPart("noticePicture") MultipartFile noticePicture,HttpServletRequest request) {
            if (noticePicture.isEmpty())
                return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
            String path = request.getSession().getServletContext().getRealPath("img");
            String fileName = noticePicture.getOriginalFilename();
            String fileNameStr = (new Date().getTime()) + "_" + fileName;
            File targetFile = new File(path, fileNameStr);
            try {
                if (!targetFile.exists()){
                    targetFile.createNewFile();
                }
                noticePicture.transferTo(targetFile);
            }catch (Exception e) {
                e.printStackTrace();
            }
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
    }

    @RequestMapping(value = "/deleteNotice", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> deleteNotice(@RequestBody Notice notice) {
        try {
            noticeService.deleteNotice(notice.getNoticeId());
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (NoticeServiceException e) {
            throw new CatchServiceException(e);
        }
    }

    @RequestMapping(value = "/updateNotice", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Result> updateNotice(@RequestBody Notice notice) {
        try {
            noticeService.updateNotice(notice);
            return new ResponseEntity<Result>(new Result(Result.RESULT_SUCCESS), HttpStatus.OK);
        } catch (NoticeServiceException e) {
            throw new CatchServiceException(e);
        }
    }
}
