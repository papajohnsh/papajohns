package papa.member.model;

import java.util.Map;

public interface MemberDAO {

	public static final int NOT_ID=1;
	public static final int NOT_PWD=2;
	public static final int LOGIN_OK=3;
	public static final int ERROR=-1;
	
	public int memberAdd(MemberDTO dto);
	public boolean idCheck(String userid);
	public int loginOk(Map<String, String> map);
	public String getUserInfo(String id);
	
}
