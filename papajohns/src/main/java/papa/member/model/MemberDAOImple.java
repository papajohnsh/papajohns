package papa.member.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
	
	public String loginOk(String id) {//로그인
		
		String result=sqlMap.selectOne("loginCheck", id);
		return result;
	}
	
	public String loginOkPw(String id){
		String result=sqlMap.selectOne("loginCheckPw", id);
		return result;
	}
	
	public String getUserInfo(String id) {//개인정보가져오기	
		String dto=sqlMap.selectOne("getUser", id);
		return dto;
	}
		
	public String pwdCheck(String repwd) {//비밀번호 확인
		String result=sqlMap.selectOne("pwdCheck", repwd);
		return result;
	}
	public List<MemberDTO> studentList() {

			List<MemberDTO> result=sqlMap.selectList("info");
			return result;
	}
	/*public String idFind(Map<String, String> map) {//아이디 찾기

		String getName=sqlMap.selectOne("idFind", map);
		return getName;
	}*/

}
