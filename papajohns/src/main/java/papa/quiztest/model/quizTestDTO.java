package papa.quiztest.model;

import java.util.*;

public class quizTestDTO {
	private int idx;
	private String subject;
	private int class_idx;
	private String start_date;
	private String start_time;
	private String quiz_content;
	private String quiz_num;
	private String writer;
	private String question;
	private String answer;
	private String example1;
	private String example2;
	private String example3;
	private String example4;
	public quizTestDTO() {
		super();
	}
	public quizTestDTO(int idx, String subject, int class_idx, String start_date, String start_time,
			String quiz_content, String quiz_num, String writer, String question, String answer, String example1,
			String example2, String example3, String example4) {
		super();
		this.idx = idx;
		this.subject = subject;
		this.class_idx = class_idx;
		this.start_date = start_date;
		this.start_time = start_time;
		this.quiz_content = quiz_content;
		this.quiz_num = quiz_num;
		this.writer = writer;
		this.question = question;
		this.answer = answer;
		this.example1 = example1;
		this.example2 = example2;
		this.example3 = example3;
		this.example4 = example4;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getClass_idx() {
		return class_idx;
	}
	public void setClass_idx(int class_idx) {
		this.class_idx = class_idx;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getQuiz_content() {
		return quiz_content;
	}
	public void setQuiz_content(String quiz_content) {
		this.quiz_content = quiz_content;
	}
	public String getQuiz_num() {
		return quiz_num;
	}
	public void setQuiz_num(String quiz_num) {
		this.quiz_num = quiz_num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getExample1() {
		return example1;
	}
	public void setExample1(String example1) {
		this.example1 = example1;
	}
	public String getExample2() {
		return example2;
	}
	public void setExample2(String example2) {
		this.example2 = example2;
	}
	public String getExample3() {
		return example3;
	}
	public void setExample3(String example3) {
		this.example3 = example3;
	}
	public String getExample4() {
		return example4;
	}
	public void setExample4(String example4) {
		this.example4 = example4;
	}

	
}
