package papa.class_.model;
import java.sql.Time;
import java.util.Date;


public class classDTO {
	 
	private int idx;
	private String name;
	private String subject;
	private String start_time;
	private String end_time;
	private String institut;

	private String start_date;
	private String end_date;
	private Date write_date;
	private String explanation;
	private String reidx;
	private String day;
	
	private String id;
	public classDTO() {
		super();
	}
	public classDTO(int idx, String name, String subject, String start_time, String end_time, String institut,
			String start_date, String end_date, Date write_date, String explanation, String reidx, String day,
			String id) {
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
		this.day = day;
		this.id = id;
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
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getInstitut() {
		return institut;
	}
	public void setInstitut(String institut) {
		this.institut = institut;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
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
	public String getReidx() {
		return reidx;
	}
	public void setReidx(String reidx) {
		this.reidx = reidx;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}


	
	
}
