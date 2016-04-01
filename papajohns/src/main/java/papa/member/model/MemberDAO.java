package papa.member.model;

import java.util.Map;

public interface MemberDAO {

	public static final int NOT_ID=1;
	public static final int NOT_PWD=2;
	public static final int LOGIN_OK=3;
	public static final int ERROR=-1;
	
	public int memberAdd(MemberDTO dto);
	public String idCheck(String id);
	public int loginOk(String id);
	public int loginOkPw(String pwd);
	public String getUserInfo(String id);
}
