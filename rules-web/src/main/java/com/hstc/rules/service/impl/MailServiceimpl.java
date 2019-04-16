package com.hstc.rules.service.impl;

import com.hstc.rules.domain.Feedback;
import com.hstc.rules.service.MailService;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by linjingshan on 2018/05/05 17:55.
 *
 * @version : 1.0
 */
@Service
public class MailServiceimpl implements MailService {

    private MailSender mailSender;

    public MailServiceimpl(MailSender mailSender) {
        this.mailSender = mailSender;
    }

    private static List<String> deps = new ArrayList<String>();

    static {
        deps.add("linjingshan@qq.com");
        deps.add("2258462872@qq.com");
        deps.add("antonyz@qq.com");
    }

    public void autoReply(Feedback feedback) {
        if (feedback != null && validEmail(feedback.getEmail())) {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom("taoj0417@163.com");
            message.setSubject("感谢您的反馈");
            message.setTo(feedback.getEmail());
            message.setText("您的问题和建议我们已经收到，我们会根据意见进行完善，感谢您的反馈～");
            mailSender.send(message);
        }
    }

    private boolean validEmail(String email) {
        String pattern = "[A-Za-z0-9._+]+@[A-Za-z]+.(com|org|edu|net)";
        return Pattern.matches(pattern, email);
    }

    public void forwardFeedback(Feedback feedback) {
        String msg = "系统收到新的反馈:" +
                "\n\t" + "反馈者: " + feedback.getName() +
                "\n\t" + "反馈者邮箱: " + feedback.getEmail() +
                "\n\t" + "反馈时间: " + feedback.getSubmitTime() +
                "\n\t" + "反馈内容: " + feedback.getContent() +
                "\n\t" + "请及时回复或处理~";

        for (int i = 0;i < deps.size();i++) {
            if (feedback != null && validEmail(deps.get(i))) {
                SimpleMailMessage message = new SimpleMailMessage();
                message.setFrom("taoj0417@163.com");
                message.setSubject("网络考试系统问题反馈");
                message.setTo(deps.get(i));
                message.setText(msg);
                mailSender.send(message);
            }
        }
    }
}
