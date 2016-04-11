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
	
	public int classNum(int idx) {//조회수
		int count=sqlMap.update("classNum", idx);
		return count;
	}

	public int getRef() {//마지막 순번
		int result=sqlMap.selectOne("classRef");
		return result;
	}

	public List<ClassBbsReDTO> classBbsReList(int idx) {//댓글 보기
		List<ClassBbsReDTO> list=sqlMap.selectList("classReList", idx);
		return list;
	}

	public int classReWrite(ClassBbsReDTO dto) {//댓글 등록
		int count=sqlMap.insert("classReWrite", dto);
		return count;
	}

	public int getIdx(int idx) {//본문 idx 가져오기
		int result=sqlMap.selectOne("classIdx", idx);
		return result;
	}

	public ClassBbsDTO classFindName(String writer) {//수업 검색(작성자)
		ClassBbsDTO dto=sqlMap.selectOne("classFindName", writer);
		return dto;
	}

	public ClassBbsDTO classFindSubject(String subject) {//수업 검색(제목)
		ClassBbsDTO dto=sqlMap.selectOne("classFindSubject", subject);
		return dto;
	}
}
