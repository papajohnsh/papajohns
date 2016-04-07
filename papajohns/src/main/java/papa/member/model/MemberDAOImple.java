package papa.member.model;

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

	public String idCheck(String id) {//아이디 중복 검사
		String result=sqlMap.selectOne("idCheck", id);
		return result;
	}
	
	public String loginOk(String id) {//로그인
		
		String result=sqlMap.selectOne("loginCheck", id);
		return result;
	}
	
	public String loginOkPw(String id){//로그인 판별
		String result=sqlMap.selectOne("loginCheckPw", id);
		return result;
	}
	
	public MemberDTO getUserInfo(String id) {//개인정보 가져오기
		MemberDTO result=sqlMap.selectOne("getUser", id);
		return result;
	}
		
	public String pwdCheck(String repwd) {//비밀번호 확인
		String result=sqlMap.selectOne("pwdCheck", repwd);
		return result;
	}
	public List<MemberDTO> studentList() {

			List<MemberDTO> result=sqlMap.selectList("info");
			return result;
	}
	public int idFind(Map<String, String> map) {//아이디 찾기

		int result=sqlMap.selectOne("idFind", map);
		return result;
	}

	public String emailFind(String email) {
		String getEmail=sqlMap.selectOne("emailFind", email);
		return getEmail;
	}
	
	public int pwdFind(Map<String, String> map) {//비밀번호 찾기
		int result=sqlMap.selectOne("pwdFind", map);
		return result;
	}
	
	public String emailFind2(String email) {
		String getEmail2=sqlMap.selectOne("emailFind2", email);
		return getEmail2;
	}
	
	
	public int infoMod(MemberDTO dto) {//내정보 수정하기
		int count=sqlMap.update("infoMod", dto);
		return count;
	}
	
	public int memberOut(MemberDTO dto) {//회원탈퇴하기
		int count=sqlMap.delete("memberOut", dto);
		return count;
	}
}
