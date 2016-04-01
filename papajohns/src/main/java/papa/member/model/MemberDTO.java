package papa.member.model;

import java.sql.*;

public class MemberDTO {

	private int member_idx;
	private String interlocking;
	private String id;
	private String pwd;
	private String name;
	private String birthday;
	private int gender;
	private String phonenumber;
	private String email;
	private Date joindate;
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(int member_idx, String interlocking, String id, String pwd, String name, String birthday,
			int gender, String phonenumber, String email, Date joindate) {
		super();
		this.member_idx = member_idx;
		this.interlocking = interlocking;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birthday = birthday;
		this.gender = gender;
		this.phonenumber = phonenumber;
		this.email = email;
		this.joindate = joindate;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public String getInterlocking() {
		return interlocking;
	}

	public void setInterlocking(String interlocking) {
		this.interlocking = interlocking;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

}
