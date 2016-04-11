package papa.quiztest.model;

import java.sql.Date;

public class quizTestDTO {
	private int idx;
	private String subject;
	private int class_idx;
	private Date quiz_date;
	private String quiz_content;
	private String quiz_num;
	public quizTestDTO() {
		super();
	}
	
	public quizTestDTO(int idx, String subject, int class_idx, Date quiz_date, String quiz_content, String quiz_num) {
		super();
		this.idx = idx;
		this.subject = subject;
		this.class_idx = class_idx;
		this.quiz_date = quiz_date;
		this.quiz_content = quiz_content;
		this.quiz_num = quiz_num;
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
	
}
