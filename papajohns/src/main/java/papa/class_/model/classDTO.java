package papa.class_.model;

import java.util.Date;

public class classDTO {
	
	private int idx;
	private String name;
	private String subject;
	private String class_time;
	private String institut;
	private String class_date;
	private Date write_date;
	private String explanation;
	private	String location;
	private int reidx;
	public classDTO() {
		// TODO Auto-generated constructor stub
	}
	public classDTO(int idx, String name, String subject, String class_time, String institut, String class_date,
			Date write_date, String explanation, String location, int reidx) {
		super();
		this.idx = idx;
		this.name = name;
		this.subject = subject;
		this.class_time = class_time;
		this.institut = institut;
		this.class_date = class_date;
		this.write_date = write_date;
		this.explanation = explanation;
		this.location = location;
		this.reidx = reidx;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getClass_time() {
		return class_time;
	}
	public void setClass_time(String class_time) {
		this.class_time = class_time;
	}
	public String getInstitut() {
		return institut;
	}
	public void setInstitut(String institut) {
		this.institut = institut;
	}
	public String getClass_date() {
		return class_date;
	}
	public void setClass_date(String class_date) {
		this.class_date = class_date;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getReidx() {
		return reidx;
	}
	public void setReidx(int reidx) {
		this.reidx = reidx;
	}
	
	

}
