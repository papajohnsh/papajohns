package papa.designbbs.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class DesignBbsDAOImple implements DesignBbsDAO {

	private SqlSessionTemplate sqlMap;

	public DesignBbsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int designWrite(DesignBbsDTO dto) {//디자인게시판 글쓰기
		int count=sqlMap.insert("designWrite", dto);
		return count;
	}
	
	public List<DesignBbsDTO> designList() {//디자인 리스트 보기
		List<DesignBbsDTO> list=sqlMap.selectList("designList");
		return list;
	}
	
	public DesignBbsDTO designContent(int idx) {//디자인 본문 보기
		DesignBbsDTO dto=sqlMap.selectOne("designContent", idx);
		return dto;
	}
	
	public int designNum(int idx) {//조회수
		int count=sqlMap.update("designNum", idx);
		return count;
	}
}
