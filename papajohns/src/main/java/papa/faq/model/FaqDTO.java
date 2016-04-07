package papa.faq.model;

import java.sql.*;

public class FaqDTO {

	private int idx;
	private String writer;
	private String subject;
	private String content;
	private Date write_date;
	private int readnum;
	
	public FaqDTO() {
		super();
	}

	public FaqDTO(int idx, String writer, String subject, String content, Date write_date, int readnum) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.write_date = write_date;
		this.readnum = readnum;
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

	public int getReadnum() {
		return readnum;
	}

	public void setReadnum(int readnum) {
		this.readnum = readnum;
	}
	
	
}
