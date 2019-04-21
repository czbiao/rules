//package com.hstc.rules.web;
//
//import com.hstc.rules.domain.*;
//import com.hstc.rules.persistence.*;
//import com.hstc.rules.persistence.impl.*;
//import com.hstc.rules.service.TestService;
//import com.hstc.rules.service.TitleService;
//import com.hstc.rules.service.impl.TestServiceimpl;
//import com.hstc.rules.service.impl.TitleServiceimpl;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.fasterxml.jackson.databind.ObjectWriter;
//import org.junit.Test;
//import org.springframework.http.MediaType;
//import org.springframework.test.web.servlet.MockMvc;
//import sun.font.TextRecord;
//
//import java.sql.Timestamp;
//import java.util.*;
//
//import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
//import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
//import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;
//
///**
// * Created by linjingshan on 2017/6/12.
// */
//public class TestActionBeanTest {
//    private TestDAO testDAO = new TestDAOimpl();
//    private ContestTestDAO contestTestDAO = new ContestTestDAOimpl();
//    private TestRecordDAO testRecordDAO = new TestRecordDAOimpl();
//    private TitleDAO titleDAO = new TitleDAOimpl();
//    private WrongtitleDAO wrongtitleDAO = new WrongtitleDAOimpl();
//    private TesttitleDAO testtitleDAO = new TesttitleDAOimpl();
//    private ContestTitleDAO contestTitleDAO = new ContestTitleDAOimpl();
//    private AdditiontitleDAO additiontitleDAO = new AdditiontitleDAOimpl();
//    private PaperrecordDAO paperrecordDAO = new PaperrecordDAOimpl();
//
//    TestService testService = new TestServiceimpl(contestTestDAO, testDAO, testRecordDAO, testtitleDAO, contestTitleDAO, paperrecordDAO);
//    TitleService titleService = new TitleServiceimpl(titleDAO, wrongtitleDAO, additiontitleDAO);
////    TestActionBean testActionBean = new TestActionBean(testService, titleService);
//    ObjectMapper mapper = new ObjectMapper();
//    ObjectWriter ow = mapper.writer().withDefaultPrettyPrinter();
//
//    @Test
//    public void testStartTest() throws Exception {
//        Testrecord testrecord = new Testrecord();
//        testrecord.setStudentId(3903150332L);
//        testrecord.setTestId(1);
//        testrecord.setStartTime(new Timestamp(System.currentTimeMillis()));
//        String requestJson = ow.writeValueAsString(testrecord);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/startTest")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void testRecordInfo() throws Exception {
//        Testrecord testrecord = new Testrecord();
//        testrecord.setStudentId(3903150326L);
//        testrecord.setTestId(1);
//        String requestJson = ow.writeValueAsString(testrecord);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/testRecordInfo")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void testIsRegisted() throws Exception {
//        Contestregistion contestregistion = new Contestregistion();
//        contestregistion.setStudentId(3903150326L);
//        contestregistion.setTestId(3);
//        String requestJson = ow.writeValueAsString(contestregistion);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/isRegisted")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void registContest() throws Exception {
//        Contestregistion contestregistion = new Contestregistion();
//        contestregistion.setStudentId(3903150327L);
//        contestregistion.setTestId(3);
//        String requestJson = ow.writeValueAsString(contestregistion);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/registContest")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void testContestStatus() throws Exception {
//        Contestregistion contestregistion = new Contestregistion();
//        contestregistion.setStudentId(3903150327L);
//        contestregistion.setTestId(3);
//        String requestJson = ow.writeValueAsString(contestregistion);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/getContestStatus")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void testSubmitTest() throws Exception {
//        List<Object> objectList = new ArrayList<Object>();
//        List<Title> titleList = new ArrayList<Title>(1);
//        Set<Option> options = new HashSet<Option>();
//        Option option1 = new Option();
//        option1.setTitleId(1);
//        option1.setChecked((byte) 0);
//        option1.setContent("1");
//        option1.setOptionId(5);
//        options.add(option1);
//        Option option2 = new Option();
//        option2.setTitleId(1);
//        option2.setChecked((byte) 1);
//        option2.setContent("2");
//        option2.setOptionId(6);
//        options.add(option2);
//        Option option3 = new Option();
//        option3.setTitleId(1);
//        option3.setChecked((byte) 0);
//        option3.setContent("3");
//        option3.setOptionId(7);
//        options.add(option3);
//        Option option4 = new Option();
//        option4.setTitleId(1);
//        option4.setChecked((byte) 0);
//        option4.setContent("4");
//        option4.setOptionId(4);
//        options.add(option4);
//        Title title1 = new Title();
//        title1.setTitleId(1);
//        title1.setDiffId(1);
//        title1.setScore(5);
//        title1.setOptions(options);
//        titleList.add(title1);
//        Testrecord test = new Testrecord();
//        test.setStudentId(3903150332L);
//        test.setTestId(1);
//        test.setSubmitTime(new Timestamp(System.currentTimeMillis()));
//        test.setScore(50);
//        objectList.add(titleList);
//        objectList.add(test);
//
//        String requestJson = ow.writeValueAsString(objectList);
//        System.out.print(requestJson);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/submitTest")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void testInsertTestInfo() throws Exception {
//        Testinfo testinfo = new Testinfo();
//        testinfo.setType(new Integer(0).byteValue());
//        testinfo.setName("韩山师范学院第八次校规校纪测试");
//        testinfo.setGrade(2017);
//        testinfo.setStartTime(new Timestamp(System.currentTimeMillis()));
//        testinfo.setEndTime(new Timestamp(System.currentTimeMillis()));
//        testinfo.setDuration(100);
//        String requestJson = ow.writeValueAsString(testinfo);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/insertTest")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void testDeleteTestInfo() throws Exception {
//        String requestJson = ow.writeValueAsString(5);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/deleteTest")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void getAllRecord() throws Exception {
//        String requestJson = ow.writeValueAsString(1);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/getAllTestRecord")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void testContestTitle() throws Exception {
//        Set<Integer> set = new HashSet<Integer>();
//        set.add(1);
//        set.add(2);
//        set.add(6);
//        String requestJson = ow.writeValueAsString(set);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/publishContestTitle")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//
//    @Test
//    public void testContestRank() throws Exception {
//        Testrecord testrecord = new Testrecord();
//        testrecord.setTestId(1);
//        testrecord.setScore(99);
//        String requestJson = ow.writeValueAsString(testrecord);
//        MockMvc mockMvc = standaloneSetup(testActionBean).build();
//        mockMvc.perform(post("/test/getContsetRank")
//                .characterEncoding("UTF-8")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestJson.getBytes()))
//                .andDo(print())
//                .andExpect(status().isOk())
//                .andReturn().getResponse().getContentAsString();
//    }
//}
