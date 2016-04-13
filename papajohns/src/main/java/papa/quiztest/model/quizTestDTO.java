package papa.quiztest.model;

import java.sql.Date;

public class quizTestDTO {
	private int idx;
	private String subject;
	private int class_idx;
	private Date quiz_date;
	private String quiz_content;
	private String quiz_num;
	private String writer;
	private String question;
	private int answer;
	private String example1;
	private String example2;
	private String example3;
	private String example4;
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
	public Date getQuiz_date() {
		return quiz_date;
	}
	public void setQuiz_date(Date quiz_date) {
		this.quiz_date = quiz_date;
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
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
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
	public quizTestDTO() {
		super();
	}
	
}
