package com.hstc.rules.pretreament;

import org.apache.poi.hwpf.extractor.WordExtractor;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Created by 51157 on 2018/7/20.
 */
public class ReadTestWord {
    public static Map<String, Map> read() throws IOException {
//        System.out.println(System.getProperty("user.dir"));
        InputStream is = new FileInputStream("Test/考试题.doc");
        WordExtractor extractor = new WordExtractor(is);
        //获取各个段落的文本
        String paraTexts[] = extractor.getParagraphText();

        //各个标记
        int completionSign = 0;
        int shortAnswerQuestionsSign = 0;
        int analysisQuestionsSign = 0;
        int expositionSign = 0;
        for (int i = 0; i < paraTexts.length; i++) {
            if (paraTexts[i].indexOf("一、填空题") != -1)
                completionSign = i;
            else if (paraTexts[i].indexOf("二、简答题") != -1)
                shortAnswerQuestionsSign = i;
            else if (paraTexts[i].indexOf("三、案例分析题") != -1)
                analysisQuestionsSign = i;
            else if (paraTexts[i].indexOf("四、论述题") != -1)
                expositionSign = i;
//            System.out.println("Paragraph " + (i + 1) + " : " + paraTexts[i]);
        }
        System.out.println("填空题标记：" + completionSign + ",简答题标记：" + shortAnswerQuestionsSign + ",案例分析题标记：" + analysisQuestionsSign + ",论述题标记：" + expositionSign);

        /**
         * 填空题遍历
         */
        Map<Integer, Completion> completionMap = new HashMap<Integer, Completion>();
        String currentCompletionType = "";
        int currentCompletionCount = 1;
        for (int i = completionSign + 1; i < shortAnswerQuestionsSign; i++) {
            if (paraTexts[i].indexOf("部分：") != -1) {
                currentCompletionType = paraTexts[i].substring(paraTexts[i].indexOf("：") + 1, paraTexts[i].length());
                continue;
            }
            if (paraTexts[i].indexOf("【") != -1)
                continue;
            if (paraTexts[i].indexOf(currentCompletionCount + "、") != -1) {
                Completion completion = new Completion();
                String contentString = paraTexts[i].substring(paraTexts[i].indexOf("、") + 1, paraTexts[i].length());
                contentString = contentString.replaceAll(" +", "#");
                contentString = contentString.replaceAll("\r|\n", "");
                StringBuilder content = new StringBuilder(contentString);
                completion.setContent(content);
                completion.setType(currentCompletionType);
                completionMap.put(currentCompletionCount, completion);
                currentCompletionCount++;
            } else {
                String contentString = paraTexts[i];
                contentString = contentString.replaceAll(" +", "#");
                contentString = contentString.replaceAll("\r|\n", "");
                completionMap.get(currentCompletionCount - 1).getContent().append(contentString);
            }
//            System.out.println(currentCompletionCount);
//            System.out.println("填空题部分" + (i + 1) + ",类型:" + currentCompletionType + ":" + paraTexts[i]);
        }
//        System.out.println(completionMap.get(110).getContent());

        /**
         * 简答题遍历
         */
        Map<Integer, AnswerQuestion> shortAnswerQuestionMap = new HashMap<Integer, AnswerQuestion>();
        int currentShortAnswerQuestionCount = 1;
        for (int i = shortAnswerQuestionsSign + 1; i < analysisQuestionsSign; i++) {
            if (paraTexts[i].indexOf(currentShortAnswerQuestionCount + "、") != -1) {
                AnswerQuestion answerQuestion = new AnswerQuestion();
                String content = paraTexts[i].substring(paraTexts[i].indexOf("、") + 1, paraTexts[i].length());
                content = content.replaceAll("\r|\n", "");
                answerQuestion.setContent(new StringBuilder(content));
                shortAnswerQuestionMap.put(currentShortAnswerQuestionCount, answerQuestion);
                currentShortAnswerQuestionCount++;
            } else {
                String content = paraTexts[i];
                content = content.replaceAll("\r|\n", "");
                shortAnswerQuestionMap.get(currentShortAnswerQuestionCount - 1).getContent().append(content);
            }
//            System.out.println("简答题部分" + (i + 1) + ":" + paraTexts[i]);
        }
//        System.out.println(shortAnswerQuestionMap.get(10).getContent());
        /**
         * 案例分析题遍历
         */
        int analysisQuestionsCount = 1;
        Map<Integer, AnswerQuestion> analysisQuestionsMap = new HashMap<Integer, AnswerQuestion>();
        for (int i = analysisQuestionsSign + 1; i < expositionSign; i++) {
            if (paraTexts[i].indexOf(analysisQuestionsCount + "、") != -1) {
                AnswerQuestion answerQuestion = new AnswerQuestion();
                String content = paraTexts[i].substring(paraTexts[i].indexOf("、") + 1, paraTexts[i].length());
                content = content.replaceAll("\r|\n", "");
                answerQuestion.setContent(new StringBuilder(content));
                analysisQuestionsMap.put(analysisQuestionsCount, answerQuestion);
                analysisQuestionsCount++;
            } else {
                String content = paraTexts[i];
                content = content.replaceAll("\r|\n", "");
                analysisQuestionsMap.get(analysisQuestionsCount - 1).getContent().append(content);
            }
//            System.out.println("案例分析题部分：" + (i + 1) + ":" + paraTexts[i]);
        }
//        System.out.println(analysisQuestionsMap.get(10).getContent());
        /**
         * 论述题
         */
        int expositionCount = 1;
        Map<Integer, AnswerQuestion> expositionMap = new HashMap<Integer, AnswerQuestion>();
        for (int i = expositionSign + 1; i < paraTexts.length; i++) {
            if (paraTexts[i].indexOf(expositionCount + "、") != -1) {
                AnswerQuestion answerQuestion = new AnswerQuestion();
                String content = paraTexts[i].substring(paraTexts[i].indexOf("、") + 1, paraTexts[i].length());
                answerQuestion.setContent(new StringBuilder(content));
                expositionMap.put(expositionCount, answerQuestion);
                expositionCount++;
            } else {
                String content = paraTexts[i];
                expositionMap.get(expositionCount - 1).getContent().append(content);
            }
//            System.out.println("论述题部分：" + (i + 1) + ":" + paraTexts[i]);
        }
//        System.out.println(expositionMap.get(1).getContent());
        //关闭流
        closeStream(is);

        /*
         *读取题答案部分
         */
        is = new FileInputStream("Test/考试题答案.doc");
        extractor = new WordExtractor(is);
        //获取各个段落的文本
        paraTexts = extractor.getParagraphText();
        for (int i = 0; i < paraTexts.length; i++) {
            if (paraTexts[i].indexOf("一、填空题") != -1)
                completionSign = i;
            else if (paraTexts[i].indexOf("二、简答题") != -1)
                shortAnswerQuestionsSign = i;
            else if (paraTexts[i].indexOf("三、案例分析题") != -1)
                analysisQuestionsSign = i;
            else if (paraTexts[i].indexOf("四、论述题") != -1)
                expositionSign = i;
//            System.out.println("Paragraph " + (i + 1) + " : " + paraTexts[i]);
        }
        System.out.println("填空题答案标记：" + completionSign + ",简答题答案标记：" + shortAnswerQuestionsSign);
        /*
         * 遍历填空题答案
         */

        currentCompletionCount = 1;
        for (int i = completionSign + 1; i < shortAnswerQuestionsSign; i++) {
            if (paraTexts[i].trim().equals(""))
                continue;
            if (paraTexts[i].indexOf(currentCompletionCount + ".") != -1) {
                Completion completion = completionMap.get(currentCompletionCount);
                String AnswerString = paraTexts[i].substring(paraTexts[i].indexOf(".") + 1, paraTexts[i].length());
                AnswerString = AnswerString.replaceAll(" +", "#");
                AnswerString = AnswerString.replaceAll("\r|\n", "");
                StringBuilder Answer = new StringBuilder(AnswerString);
                completion.setAnswer(Answer);
                completionMap.put(currentCompletionCount, completion);
                currentCompletionCount++;
            } else {
                String AnswerString = paraTexts[i];
                AnswerString = AnswerString.replaceAll(" +", "#");
                AnswerString = AnswerString.replaceAll("\r|\n", "");
                completionMap.get(currentCompletionCount - 1).getAnswer().append(AnswerString);
            }
//            System.out.println("填空题答案部分：" + (i + 1) + ":" + paraTexts[i]);
        }
//        System.out.println(completionMap.get(134).getAnswer());
        /**
         * 遍历简答题答案
         */

        currentShortAnswerQuestionCount = 1;
        for (int i = shortAnswerQuestionsSign + 1; i < analysisQuestionsSign; i++) {
            if (paraTexts[i].trim().equals(""))
                continue;
            if (paraTexts[i].indexOf(currentShortAnswerQuestionCount + "、") != -1) {
                AnswerQuestion answerQuestion = shortAnswerQuestionMap.get(currentShortAnswerQuestionCount);
                String answerString = paraTexts[i].substring(paraTexts[i].indexOf("、") + 1, paraTexts[i].length());
                answerQuestion.setAnswer(answerString);
                shortAnswerQuestionMap.put(currentShortAnswerQuestionCount, answerQuestion);
                currentShortAnswerQuestionCount++;
            }else {
                String answerString = shortAnswerQuestionMap.get(currentShortAnswerQuestionCount - 1).getAnswer() + paraTexts[i];
                shortAnswerQuestionMap.get(currentShortAnswerQuestionCount - 1).setAnswer(answerString);
            }
        }

        analysisQuestionsCount = 1;
        for (int i = analysisQuestionsSign + 1; i < expositionSign; i++) {
            if (paraTexts[i].trim().equals(""))
                continue;
            if (paraTexts[i].indexOf(analysisQuestionsCount + "、") != -1) {
                AnswerQuestion answerQuestion = analysisQuestionsMap.get(analysisQuestionsCount);
                String answerString = paraTexts[i].substring(paraTexts[i].indexOf("、") + 1, paraTexts[i].length());
                answerQuestion.setAnswer(answerString);
                analysisQuestionsMap.put(analysisQuestionsCount, answerQuestion);
                analysisQuestionsCount++;
            }else {
                String answerString = analysisQuestionsMap.get(analysisQuestionsCount - 1).getAnswer() + paraTexts[i];
                analysisQuestionsMap.get(analysisQuestionsCount - 1).setAnswer(answerString);
            }
        }
        Map<String, Map> paperMap = new HashMap<String, Map>();
        paperMap.put("填空题", completionMap);
        generateSQL(expositionMap, 5);
        paperMap.put("简答题", shortAnswerQuestionMap);
        paperMap.put("案例分析题", analysisQuestionsMap);
        paperMap.put("论述题", expositionMap);
        return paperMap;
    }

    private static void generateSQL(Map map, int type) {
        switch (type) {
            case 1:
                map = (Map<Integer, Completion>)map;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                map = (Map<Integer, AnswerQuestion>) map;
                break;
        }
        Set keyset = map.keySet();
        Iterator iterator = keyset.iterator();
        while (iterator.hasNext()){
            String sql = "";
            if (type == 1) {
                Completion completion = (Completion) map.get(iterator.next());
                sql = "INSERT INTO additiontitle(name, type, answer) VALUES(\"" +completion.getContent() + "\"," + type + ",\"" + completion.getAnswer().toString() + "\");";
            }else {
                AnswerQuestion answerQuestion = (AnswerQuestion) map.get(iterator.next());
                if (answerQuestion.getAnswer() != null) {
                    sql = "INSERT INTO additiontitle(name, type, answer) VALUES(\"" + answerQuestion.getContent() + "\"," + type + ",\"" + answerQuestion.getAnswer() + "\");";
                }else {
                    sql = "INSERT INTO additiontitle(name, type, answer) VALUES(\"" + answerQuestion.getContent() + "\"," + type + "," + answerQuestion.getAnswer() + ");";
                }
            }
            System.out.println(sql);
        }
    }
    /**
     * 关闭输入流
     *
     * @param is
     */
    private static void closeStream(InputStream is) {
        if (is != null) {
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        try {
            ReadTestWord.read();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
