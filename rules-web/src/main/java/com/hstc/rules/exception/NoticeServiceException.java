package com.hstc.rules.exception;

/**
 * Created by linjingshan on 2017/6/10.
 */
public class NoticeServiceException extends ServiceException{
    public NoticeServiceException() {
    }

    public NoticeServiceException(String message) {
        super(message);
    }

    public NoticeServiceException(String message, Throwable cause) {
        super(message, cause);
    }

    public NoticeServiceException(Throwable cause) {
        super(cause);
    }

    public NoticeServiceException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
