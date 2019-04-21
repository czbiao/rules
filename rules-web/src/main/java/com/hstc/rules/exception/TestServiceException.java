package com.hstc.rules.exception;

/**
 * Created by linjingshan on 2017/6/10.
 */
public class TestServiceException extends ServiceException{
    public TestServiceException() {
    }

    public TestServiceException(String message) {
        super(message);
    }

    public TestServiceException(String message, Throwable cause) {
        super(message, cause);
    }

    public TestServiceException(Throwable cause) {
        super(cause);
    }

    public TestServiceException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
