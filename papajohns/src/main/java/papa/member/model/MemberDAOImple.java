package papa.member.model;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {

	private SqlSessionTemplate sqlMap;
	
	
	public MemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	public int memberAdd(MemberDTO dto) {//회원가입
		int result = sqlMap.insert("writeAdd", dto);
		return result;
	}

	public boolean idCheck(String userid) {//아이디 중복체크
		MemberDTO id=sqlMap.selectOne("idCheck");
		return false;
	}
	
	public int loginOk(Map<String, String> map) {//로그인
		
		System.out.println(map.get("id"));
				
		int result=sqlMap.selectOne("loginCheck", map);
		System.out.println(result);
		return result;
	}
	
	public String getUserInfo(String id) {//개인정보가져오기
		
		String name=sqlMap.selectOne("getUser", id);
		return name;
	}
}
