package com.hstc.rules.web;

import com.hstc.rules.domain.Notice;
import com.hstc.rules.persistence.NoticeDAO;
import com.hstc.rules.persistence.impl.NoticeDAOimpl;
import com.hstc.rules.service.NoticeService;
import com.hstc.rules.service.impl.NoticeServiceimpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.sql.Timestamp;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

/**
 * Created by CMM on 2017/6/12.
 */
public class NoticeActionBeanTest {
    NoticeDAO noticeDAO = new NoticeDAOimpl();
    NoticeService service = new NoticeServiceimpl(noticeDAO);
    NoticeActionBean noticeActionBean = new NoticeActionBean(service);
    ObjectMapper mapper = new ObjectMapper();
    ObjectWriter ow = mapper.writer().withDefaultPrettyPrinter();

    @Test
    public void publishNotice() throws Exception {
        Notice notice = new Notice();
        notice.setTitle("123");
        notice.setContent("123");
        notice.setSubmitTime(Timestamp.valueOf("2017-06-12 12:39:10"));
        notice.setType(0);
        String requestJson = ow.writeValueAsString(notice);
        MockMvc mockMvc = standaloneSetup(noticeActionBean).build();
        mockMvc.perform(post("/notice/publishNotice")
                .characterEncoding("UTF-8")
                .contentType(MediaType.APPLICATION_JSON)
                .content(requestJson.getBytes()))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn().getResponse().getContentAsString();
    }
}
