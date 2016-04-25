package papa.question.model;

public class QuestionDTO {
	private int idx;
	private String writer;
	private String getter;
	private String content;
	private String write_date;
	private int status;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getGetter() {
		return getter;
	}
	public void setGetter(String getter) {
		this.getter = getter;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public QuestionDTO(int idx, String writer, String getter, String content, String write_date, int status) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.getter = getter;
		this.content = content;
		this.write_date = write_date;
		this.status = status;
	}
	public QuestionDTO() {
		super();
	}
	
	
	
}
