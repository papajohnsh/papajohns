package papa.freebbs.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class FreeBbsDAOImple implements FreeBbsDAO {
	
	private SqlSessionTemplate sqlMap;
	
	public FreeBbsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	public int bbsWriteAdd(FreeBbsDTO dto) {//게시판 글쓰기
		int result=sqlMap.insert("bbsWriteAdd", dto);
		return result;
	}
	
	public List<FreeBbsDTO> freeBbsList() {//게시판 보기
	
		List<FreeBbsDTO> list=sqlMap.selectList("bbsList");
		return list;

	}
	
	public int getTotalCnt() {
		int count=sqlMap.selectOne("totalCnt");
		return count;
	}

	public FreeBbsDTO bbsContent(int idx) {//본문내용 보기
		
		FreeBbsDTO list=sqlMap.selectOne("bbsContent", idx);
		return list;
	}
	
	public int readNum(int idx) {//게시판 조회수
		int count=sqlMap.update("readNum", idx);
		return count;
	}
	
	
	public FreeBbsDTO bbsFindName(String writer) {//게시판 작성자 검색
		FreeBbsDTO dto=sqlMap.selectOne("bbsFindName", writer);
		return dto;
	}
	
	
	public FreeBbsDTO bbsFindSubject(String subject) {//게시판 제목 검색
		FreeBbsDTO dto=sqlMap.selectOne("bbsFindSubject", subject);
		return dto;
	}
	
	
	public List<FreeBbsReDTO> freeBbsReList(int idx) {//댓글 보기
		List<FreeBbsReDTO> list=sqlMap.selectList("freeReList", idx);
		return list;
	}
	
	public int bbsReWrite(FreeBbsReDTO dto) {//댓글 등록
		int count=sqlMap.insert("freeReWrite", dto);
		return count;
	}
	
	public int getIdx(int idx) {//본문 idx 가져오기
		int result=sqlMap.selectOne("getIdx", idx);
		return result;
	}

	public int getRef() {//마지막 순번
		int result=sqlMap.selectOne("getRef");
		return result;
	}

	public List<FreeBbsDTO> bbsFind(String fkey, String fvalue) {

		Map<String, String> map= new HashMap();
		map.put("fkey", fkey);
		map.put("fvalue", fvalue);
		
		List<FreeBbsDTO> result=sqlMap.selectOne("bbsFind", map);
		return result;
	}
	
}
