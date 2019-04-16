package com.hstc.rules.web;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.Clockin;
import com.hstc.rules.persistence.ClockDAO;
import com.hstc.rules.persistence.impl.ClockDAOimpl;
import com.hstc.rules.service.LearnService;
import com.hstc.rules.service.impl.LearnServiceimpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.sql.Timestamp;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

/**
 * Created by linjingshan on 17-6-12.
 */
public class LearnActionBeanTest {
    private ClockDAO clockDAO = new ClockDAOimpl();
    private LearnService learnService = new LearnServiceimpl(clockDAO);
    private LearnActionBean learnActionBean = new LearnActionBean(learnService);

    ObjectMapper mapper = new ObjectMapper();
    ObjectWriter ow = mapper.writer().withDefaultPrettyPrinter();
    // 问题,每天打卡次数没有限制
    @Test
    public void testClock() throws Exception {
        Clockin clockin = new Clockin();
        clockin.setStudentId(3903150326l);
        clockin.setComment("打卡");
        clockin.setClockDay(Timestamp.valueOf("2017-06-11 16:48:38"));
        clockin.setTitleNum(15);
        clockin.setDuration(5);
        MockMvc mockMvc = standaloneSetup(learnActionBean).build();
        String requestJson = ow.writeValueAsString(clockin);

        mockMvc.perform(post("/learn/clock")
                .characterEncoding("UTF-8")
                .contentType(MediaType.APPLICATION_JSON)
                .content(requestJson.getBytes()))
                .andDo(print())
                .andExpect(status().isOk());
    }
    // 测试出现的问题
    // 更新打卡信息时，如果有字段为null,或者数字为0，则对应字段不改变
    @Test
    public void testUpClock() throws Exception {
        Clockin clockin = new Clockin();
        clockin.setStudentId(3903150326l);
        clockin.setComment("更新打卡信息");
        clockin.setClockDay(new Timestamp(System.currentTimeMillis()));
        clockin.setDuration(10);
        clockin.setTitleNum(20);

        MockMvc mockMvc = standaloneSetup(learnActionBean).build();
        String requestJson = ow.writeValueAsString(clockin);

        mockMvc.perform(post("/learn/upClock")
                .characterEncoding("UTF-8")
                .contentType(MediaType.APPLICATION_JSON)
                .content(requestJson.getBytes()))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void testClockDetail() throws Exception {
        MockMvc mockMvc = standaloneSetup(learnActionBean).build();

        mockMvc.perform(get("/learn/clockDetail?studentId=3903150326&username=李涛江&datetime=2017-06-12 16:48:38")
                .characterEncoding("UTF-8"))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void testClockList() throws Exception {
        Account account = new Account();
        account.setStudentId(3903150326l);
        account.setUsername("李涛江");

        MockMvc mockMvc = standaloneSetup(learnActionBean).build();

        String requestJson = ow.writeValueAsString(account);
        System.out.println(requestJson);
        mockMvc.perform(post("/learn/clockList")
                .contentType(MediaType.APPLICATION_JSON)
                .characterEncoding("UTF-8")
                .content(requestJson.getBytes()))
                .andDo(print())
                .andExpect(status().isOk());
    }
}
