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
	
	public int bbsReWriteAdd(FreeBbsDTO dto) {//게시판 답변 글쓰기
		int result=sqlMap.insert("bbsReWrite", dto);
		return result;
	}
	
	public int readNum(int idx) {//게시판 조회수
		int count=sqlMap.update("readNum", idx);
		return count;
	}
}
