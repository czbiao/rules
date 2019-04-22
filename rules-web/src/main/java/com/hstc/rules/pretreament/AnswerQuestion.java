package com.hstc.rules.pretreament;

/**
 * Created by linjingshan on 2018/7/21.
 */
public class AnswerQuestion {
    StringBuilder content;
    String answer;

    public StringBuilder getContent() {
        return content;
    }

    public void setContent(StringBuilder content) {
        this.content = content;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "AnswerQuestion{" +
                "content=" + content +
                ", answer='" + answer + '\'' +
                '}';
    }
}
