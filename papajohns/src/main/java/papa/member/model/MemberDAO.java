package papa.member.model;

import java.util.Map;

public interface MemberDAO {
	
	public int memberAdd(MemberDTO dto);
<<<<<<< HEAD
	public String idCheck(String userid);
	public String loginOk(Map<String, String> map);
=======
	public String idCheck(String id);
	public int loginOk(String id);
	public int loginOkPw(String pwd);
>>>>>>> branch 'master' of https://github.com/papajohnsh/papajohns.git
	public String getUserInfo(String id);
}
