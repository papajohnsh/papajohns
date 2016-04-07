package papa.qnare.model;

import java.sql.Date;

public class QnaReDTO {

	private int idx;
	private String writer;
	private String subject;
	private String content;
	private Date write_date;
	private int ref;
	
	public QnaReDTO() {
		super();
	}

	public QnaReDTO(int idx, String writer, String subject, String content, Date write_date, int ref) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.write_date = write_date;
		this.ref = ref;
	}

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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}
}
