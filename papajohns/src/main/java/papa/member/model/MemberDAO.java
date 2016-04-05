package papa.member.model;

import java.util.*;

public interface MemberDAO {
	
	public int memberAdd(MemberDTO dto);
	public String idCheck(String id);
	public String loginOk(String id);
	public String loginOkPw(String pwd);
	public String getUserInfo(String id);
	public List<MemberDTO> studentList();
	/*public String idFind(Map<String, String> map);*/

}
