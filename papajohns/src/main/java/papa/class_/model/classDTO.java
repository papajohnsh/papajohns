package papa.class_.model;

import java.util.Date;

public class classDTO {
	
	private int idx;
	private String name;
	private String subject;
	private Date class_time;
	private String institut;
	private Date class_date;
	private Date write_date;
	private String explanation;
	private String location;
	public classDTO() {
		// TODO Auto-generated constructor stub
	}
	public classDTO(int idx, String name, String subject, Date class_time, String institut, Date class_date,
			Date write_date, String explanation, String location) {
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
	public Date getClass_time() {
		return class_time;
	}
	public void setClass_time(Date class_time) {
		this.class_time = class_time;
	}
	public String getInstitut() {
		return institut;
	}
	public void setInstitut(String institut) {
		this.institut = institut;
	}
	public Date getClass_date() {
		return class_date;
	}
	public void setClass_date(Date class_date) {
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
	
	

}
