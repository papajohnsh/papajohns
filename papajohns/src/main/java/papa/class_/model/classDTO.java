package papa.class_.model;
import java.sql.Time;
import java.util.Date;


public class classDTO {
	 
	private int idx;
	private String name;
	private String subject;
	private Time start_time;
	private Time end_time;
	private String institut;
	
	private Date start_date;
	private Date end_date;
	private Date write_date;
	private String explanation;
	private int reidx;
	

	public classDTO() {
		super();
	}

	public classDTO(int idx, String name, String subject, Time start_time, Time end_time, String institut,
			Date start_date, Date end_date, Date write_date, String explanation, int reidx) {
		super();
		this.idx = idx;
		this.name = name;
		this.subject = subject;
		this.start_time = start_time;
		this.end_time = end_time;
		this.institut = institut;
		this.start_date = start_date;
		this.end_date = end_date;
		this.write_date = write_date;
		this.explanation = explanation;
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


	public Time getStart_time() {
		return start_time;
	}


	public void setStart_time(Time start_time) {
		this.start_time = start_time;
	}


	public Time getEnd_time() {
		return end_time;
	}


	public void setEnd_time(Time end_time) {
		this.end_time = end_time;
	}


	public String getInstitut() {
		return institut;
	}


	public void setInstitut(String institut) {
		this.institut = institut;
	}


	public Date getStart_date() {
		return start_date;
	}


	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}


	public Date getEnd_date() {
		return end_date;
	}


	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
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


	public int getReidx() {
		return reidx;
	}


	public void setReidx(int reidx) {
		this.reidx = reidx;
	}

	
}
