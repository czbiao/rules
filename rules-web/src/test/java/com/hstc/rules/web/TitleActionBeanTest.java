package com.hstc.rules.web;

import com.hstc.rules.domain.Account;
import com.hstc.rules.domain.AccountTitles;
import com.hstc.rules.domain.Option;
import com.hstc.rules.domain.Title;
import com.hstc.rules.persistence.*;
import com.hstc.rules.persistence.impl.*;
import com.hstc.rules.service.TitleService;
import com.hstc.rules.service.impl.TitleServiceimpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import org.junit.Test;

import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

/**
 * Created by linjingshan on 18-6-12.
 */
public class TitleActionBeanTest {
    private TitleDAO2 titleDAO2 = new TitleDAO2impl();
    private TitleDAO titleDAO = new TitleDAOimpl(titleDAO2);
    private WrongtitleDAO wrongtitleDAO = new WrongtitleDAOimpl();
    private AdditiontitleDAO2 additiontitleDAO2 = new AdditiontitleDAO2impl();
    private AdditiontitleDAO additiontitleDAO = new AdditiontitleDAOimpl(additiontitleDAO2);
    private TitleService titleService = new TitleServiceimpl(titleDAO, wrongtitleDAO, additiontitleDAO);
    private TitleActionBean titleActionBean = new TitleActionBean(titleService);

    ObjectMapper mapper = new ObjectMapper();
    ObjectWriter ow = mapper.writer().withDefaultPrettyPrinter();
    @Test
    public void testPractice() throws Exception {
        MockMvc mockMvc = standaloneSetup(titleActionBean).build();

        mockMvc.perform(get("/title/practice"))
                .andDo(print());
    }

    // 试题练习模块提交试题，
    // 测试出现的问题，选择正确的选项错题记录有了错误的记录
    // 提交后返回的试题列表没有格式化
    @Test
    public void testSubmit() throws Exception {
        List<Title> titleList = new ArrayList<Title>(1);
        Set<Option> options = new HashSet<Option>();
        Option option1 = new Option();
        option1.setTitleId(1);
        option1.setChecked((byte)0);
        option1.setContent("1");
        option1.setOptionId(1);
        options.add(option1);
        Option option2 = new Option();
        option2.setTitleId(1);
        option2.setChecked((byte)1);
        option2.setContent("2");
        option2.setOptionId(2);
        options.add(option2);
        Option option3 = new Option();
        option3.setTitleId(1);
        option3.setChecked((byte)0);
        option3.setContent("3");
        option3.setOptionId(3);
        options.add(option3);
        Option option4 = new Option();
        option4.setTitleId(1);
        option4.setChecked((byte)0);
        option4.setContent("4");
        option4.setOptionId(4);
        options.add(option4);
        Title title1 = new Title();
        title1.setTitleId(1);
        title1.setDiffId(1);
        title1.setScore(5);
        title1.setOptions(options);
        titleList.add(title1);
        Account account = new Account();
        account.setStudentId(3903150326l);
        account.setUsername("李涛江");
        AccountTitles accountTitles = new AccountTitles();
        accountTitles.setTitleList(titleList);
        accountTitles.setAccount(account);

        String requestJson = ow.writeValueAsString(accountTitles);
        System.out.println(requestJson);
        MockMvc mockMvc = standaloneSetup(titleActionBean).build();

        mockMvc.perform(post("/title/submit")
                .characterEncoding("UTF-8")
                .contentType(MediaType.APPLICATION_JSON)
                .content(requestJson.getBytes()))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void testWrongList() throws Exception {
        Account account = new Account();
        account.setStudentId(3903150326l);
        account.setUsername("李涛江");
        MockMvc mockMvc = standaloneSetup(titleActionBean).build();

        String requestJson = ow.writeValueAsString(account);
        mockMvc.perform(post("/title/wrongList")
                .characterEncoding("UTF-8")
                .contentType(MediaType.APPLICATION_JSON)
                .content(requestJson))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void testItemByGet() throws Exception {
        MockMvc mockMvc = standaloneSetup(titleActionBean).build();

        mockMvc.perform(get("/title/item/1"))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void testItemByPost() throws Exception {
        Title title = new Title();
        title.setTitleId(1);
        MockMvc mockMvc = standaloneSetup(titleActionBean).build();
        String requestJson = ow.writeValueAsString(title);
        mockMvc.perform(post("/title/item")
                .contentType(MediaType.APPLICATION_JSON)
                .content(requestJson).characterEncoding("UTF-8"))
                .andDo(print())
                .andExpect(status().isOk());
    }
}
