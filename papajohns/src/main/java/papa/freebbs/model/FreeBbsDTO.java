package papa.freebbs.model;

import java.sql.*;

public class FreeBbsDTO {

	private int idx;
	private String writer;
	private String subject;
	private String content;
	private Date write_date;
	private int readnum;
	private int ref;
	private int lev;
	private int sunbun;
	
	public FreeBbsDTO() {
		super();
	}

	public FreeBbsDTO(int idx, String writer, String subject, String content, Date write_date, int readnum, int ref,
			int lev, int sunbun) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.write_date = write_date;
		this.readnum = readnum;
		this.ref = ref;
		this.lev = lev;
		this.sunbun = sunbun;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getWriter() {
		return writer.replace(",", "");
	}

	public void setWriter(String writer) {
		this.writer = writer.replace(",", "");
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

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getLev() {
		return lev;
	}

	public void setLev(int lev) {
		this.lev = lev;
	}

	public int getSunbun() {
		return sunbun;
	}

	public void setSunbun(int sunbun) {
		this.sunbun = sunbun;
	}
	
}
