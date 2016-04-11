package papa.classbbs.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class ClassBbsDAOImple implements ClassBbsDAO {
	
	private SqlSessionTemplate sqlMap;
	
	

	public ClassBbsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int writeAdd(ClassBbsDTO dto) {//글쓰기 등록
		int count=sqlMap.insert("writeAdd", dto);
		return count;
	}
	
	public List<ClassBbsDTO> classList() {//게시판 리스트 보기
		List<ClassBbsDTO> list=sqlMap.selectList("classList");
		return list;
	}
	
	public ClassBbsDTO classContent(int idx) {//본문내용 보기
		ClassBbsDTO list=sqlMap.selectOne("classContent", idx);
		return list;
	}
	
	public int reWriteAdd(ClassBbsDTO dto) {//답변글쓰기 등록
		int count=sqlMap.insert("reWriteAdd", dto);
		return count;
	}
	
	public int classNum(int idx) {//조회수
		int count=sqlMap.update("classNum", idx);
		return count;
	}

}
