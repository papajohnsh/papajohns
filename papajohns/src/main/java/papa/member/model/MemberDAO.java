package papa.member.model;

import java.util.Map;

public interface MemberDAO {
	
	public int memberAdd(MemberDTO dto);
	public String idCheck(String id);
	public int loginOk(String id);
	public int loginOkPw(String pwd);
	public String getUserInfo(String id);
}
