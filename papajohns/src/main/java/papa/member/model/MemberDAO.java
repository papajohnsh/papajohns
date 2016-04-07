package papa.member.model;

import java.util.*;

public interface MemberDAO {
	
	public int memberAdd(MemberDTO dto);
	public String idCheck(String id);
	public String loginOk(String id);
	public String loginOkPw(String pwd);
	public MemberDTO getUserInfo(String id);
	public List<MemberDTO> studentList();
	
	public int idFind(Map<String, String> map);
	public String emailFind(String email);
	
	public int pwdFind(Map<String, String> map);
	public String emailFind2(String email);
	public int infoMod(MemberDTO dto);
	
	public int memberOut(MemberDTO dto);

}