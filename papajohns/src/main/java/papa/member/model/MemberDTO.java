package papa.member.model;
import java.sql.*;
public class MemberDTO {
 private int idx;
 private String interlock;
 private String id;
 private String pwd;
 private String repwd;
 private String name;
 private String birthday;
 private int gender;
 private String phonenumber;
 private String email;
 private Date joindate;
 
 public MemberDTO() {
  super();
 }
 public MemberDTO(int idx, String interlock, String id, String pwd, String repwd, String name, String birthday,
   int gender, String phonenumber, String email, Date joindate) {
  super();
  this.idx = idx;
  this.interlock = interlock;
  this.id = id;
  this.pwd = pwd;
  this.repwd = repwd;
  this.name = name;
  this.birthday = birthday;
  this.gender = gender;
  this.phonenumber = phonenumber;
  this.email = email;
  this.joindate = joindate;
 }
 public int getIdx() {
  return idx;
 }
 public void setIdx(int idx) {
  this.idx = idx;
 }
 public String getInterlock() {
  return interlock;
 }
 public void setInterlock(String interlock) {
  this.interlock = interlock;
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
 public String getRepwd() {
  return repwd;
 }
 public void setRepwd(String repwd) {
  this.repwd = repwd;
 }
 public String getName() {
  return name;
 }
 public void setName(String name) {
  this.name = name;
 }
 public String getBirthday() {
  return birthday.replace(",", "-");
 }
 public void setBirthday(String birthday) {
  this.birthday = birthday.replace(",", "-");
 }
 public int getGender() {
  return gender;
 }
 public void setGender(int gender) {
  this.gender = gender;
 }
 public String getPhonenumber() {
  return phonenumber.replace(",", "-");
 }
 public void setPhonenumber(String phonenumber) {
  this.phonenumber = phonenumber.replace(",", "-");
 }
 public String getEmail() {
  return email.replace(",", "");
 }
 public void setEmail(String email) {
  this.email = email.replace(",", "");
 }
 public Date getJoindate() {
  return joindate;
 }
 public void setJoindate(Date joindate) {
  this.joindate = joindate;
 }
 
 
} 