package papa.member.model;

import java.util.Map;

public interface MemberDAO {
	
	public int memberAdd(MemberDTO dto);
	public String idCheck(String userid);
	public String loginOk(Map<String, String> map);
	public String getUserInfo(String id);

	
}
