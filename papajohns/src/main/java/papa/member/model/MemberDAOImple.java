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
		int result = sqlMap.insert("memberAdd", dto);
		return result;
	}

	public String idCheck(String id) {//아이디 중복체크
		String result=sqlMap.selectOne("idCheck", id);
		return result;
	}
	
	public int loginOk(String id) {//로그인
		int result=sqlMap.selectOne("loginCheck", id);
		return result;
	}
	
	public int loginOkPw(String pwd){
		int result=sqlMap.selectOne("loginCheckPw", pwd);
		return result;
	}
	
	public String getUserInfo(String id) {//개인정보가져오기
		
		String dto=sqlMap.selectOne("getUser", id);
		return dto;
	}
}
