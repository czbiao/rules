package com.hstc.rules.pretreament;

/**
 * Created by 51157 on 2018/7/21.
 */
public class Completion {
    StringBuilder content;
    String type;
    StringBuilder answer;

    public StringBuilder getContent() {
        return content;
    }

    public void setContent(StringBuilder content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public StringBuilder getAnswer() {
        return answer;
    }

    public void setAnswer(StringBuilder answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "Completion{" +
                "content=" + content +
                ", type='" + type + '\'' +
                ", answer=" + answer +
                '}';
    }
}
