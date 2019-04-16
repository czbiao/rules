package com.hstc.rules.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

/**
 * Created by linjingshan on 2017/9/20.
 */
@Configuration
public class EmailConfig {

    @Bean
    public MailSender mailSender(Environment environment) {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.163.com");
        mailSender.setPort(25);
        mailSender.setUsername("taoj0417@163.com");
        mailSender.setPassword("helloworld123");

        //加认证机制
        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.smtp.auth", true);
        javaMailProperties.put("mail.smtp.starttls.enable", true);
        javaMailProperties.put("mail.smtp.connectiontimeout", 5000); // 连接超时时间
        javaMailProperties.put("mail.smtp.timeout", 5000); // 发送超时时间
        mailSender.setJavaMailProperties(javaMailProperties);

        return mailSender;
    }
}