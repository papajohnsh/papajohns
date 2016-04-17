package papa.quizAnswer.model;
import java.util.*;
public class quizAnswerDTO {
	private int idx;
	private String subject;
	private String member_id;
	private int class_idx;
	private int paper_idx;
	private String ox;
	private int answer_num;
	private Date end_date;
	private String quiz_answer;
	public quizAnswerDTO() {
		super();
	}
	public quizAnswerDTO(int idx, String subject, String member_id, int class_idx, int paper_idx, String ox,
			int answer_num, Date end_date, String quiz_answer) {
		super();
		this.idx = idx;
		this.subject = subject;
		this.member_id = member_id;
		this.class_idx = class_idx;
		this.paper_idx = paper_idx;
		this.ox = ox;
		this.answer_num = answer_num;
		this.end_date = end_date;
		this.quiz_answer = quiz_answer;
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
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
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
	public String getOx() {
		return ox;
	}
	public void setOx(String ox) {
		this.ox = ox;
	}
	public int getAnswer_num() {
		return answer_num;
	}
	public void setAnswer_num(int answer_num) {
		this.answer_num = answer_num;
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

