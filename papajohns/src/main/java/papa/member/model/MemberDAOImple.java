package papa.member.model;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {
	
	private SqlSessionTemplate sqlMap;

	public MemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int memberAdd(MemberDTO dto) {
		//System.out.println(dto.getName()+""+dto.getId()+""+dto.getPwd());
		int result=sqlMap.insert("memberAdd", dto);
		return result;
	}

}
