package com.hstc.rules.web;

import com.hstc.rules.domain.Error;
import com.hstc.rules.exception.CatchServiceException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Created by linjingshan on 18-5-30.
 */
public abstract class AbstractActionBean {
    @ExceptionHandler(CatchServiceException.class)
    @ResponseStatus(HttpStatus.OK)
    public @ResponseBody
    Error serviceError(CatchServiceException e) {
        Error error = new Error(e.getServiceException().getErrorCode(), "error");
        return error;
    }
}
