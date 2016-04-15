package papa.quizAnswer.model;
import java.util.*;
public class quizAnswerDTO {
	private int idx;
	private String subject;
	private int class_idx;
	private int paper_idx;
	private Date end_date;
	private String quiz_answer;
	public quizAnswerDTO(int idx, String subject, int class_idx, int paper_idx, Date end_date, String quiz_answer) {
		super();
		this.idx = idx;
		this.subject = subject;
		this.class_idx = class_idx;
		this.paper_idx = paper_idx;
		this.end_date = end_date;
		this.quiz_answer = quiz_answer;
	}
	public quizAnswerDTO() {
		super();
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
	public int getPaper_idx() {
		return paper_idx;
	}
	public void setPaper_idx(int paper_idx) {
		this.paper_idx = paper_idx;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getQuiz_answer() {
		return quiz_answer;
	}
	public void setQuiz_answer(String quiz_answer) {
		this.quiz_answer = quiz_answer;
	}
	
}

