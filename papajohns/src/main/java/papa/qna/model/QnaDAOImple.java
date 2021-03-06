package papa.qna.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class QnaDAOImple implements QnaDAO {
	
	private SqlSessionTemplate sqlMap;

	public QnaDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	

	public int qnaWrite(QnaDTO dto) {//글쓰기 등록
		int result=sqlMap.insert("qnaWrite", dto);
		return result;
	}
	
	public QnaDTO qnaContent(int idx) {//qna 검색
		QnaDTO list=sqlMap.selectOne("qnaContent", idx);
		return list;
	}

	public List<QnaDTO> qnaList(Map<String, Integer> map) {//qna 게시판 리스트
		List<QnaDTO> list=sqlMap.selectList("qnaList", map);
		return list;
	}
	
	public int getIdx(int idx) {//본문 idx 가져오기
		int result=sqlMap.selectOne("qnaIdx", idx);
		return result;
	}
	
	public int getRef() {//마지막 순번
		int result=sqlMap.selectOne("qnaRef");
		return result;
	}

	public int qnaNum(int idx) {//조회수
		int result=sqlMap.update("qnaNum", idx);
		return result;
	}

	public QnaDTO qnaFindName(String writer) {//qna 작성자 검색
		QnaDTO dto=sqlMap.selectOne("qnaFindName", writer);
		return dto;
	}

	public QnaDTO qnaFindSubject(String subject) {//qna 제목 검색
		QnaDTO dto=sqlMap.selectOne("qnaFindSubject", subject);
		return dto;
	}

	public int qnaReWrite(QnaReDTO dto) {//qna 댓글 등록
		int count=sqlMap.insert("qnaReWrite", dto);
		return count;
	}

	public List<QnaReDTO> qnaReList(int idx) {//qna 리스트 보기
		List<QnaReDTO> list=sqlMap.selectList("qnaReList", idx);
		return list;
	}

	public int getTotalCnt() {//총게시물 수 가져오기
		int count=sqlMap.selectOne("qnaTotalCnt");
		return count;
	}

	public List<QnaDTO> qnaFind(Map<String, String> map) {//qna 검색
		List<QnaDTO> list=sqlMap.selectList("qnaFind", map);
		return list;
	}
}
