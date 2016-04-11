package papa.freebbs.model;

import java.sql.*;

public class FreeBbsReDTO {
	
	private int idx;
	private String writer;
	private String subject;
	private String content;
	private Date write_date;
	private int re_idx;
	private int ref;
	private int lev;
	private int sunbun;
	
	public FreeBbsReDTO() {
		super();
	}

	public FreeBbsReDTO(int idx, String writer, String subject, String content, Date write_date, int re_idx, int ref,
			int lev, int sunbun) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.write_date = write_date;
		this.re_idx = re_idx;
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

	public int getRe_idx() {
		return re_idx;
	}

	public void setRe_idx(int re_idx) {
		this.re_idx = re_idx;
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
