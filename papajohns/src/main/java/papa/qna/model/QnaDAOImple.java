package papa.qna.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class QnaDAOImple implements QnaDAO {
	
	private SqlSessionTemplate sqlMap;

	public QnaDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	

	public int QnAAdd(QnaDTO dto) {//글쓰기 등록
		int result=sqlMap.insert("QnAbbsAdd", dto);
		return result;
	}
	
	public List<QnaDTO> QnAJoin(int idx) {//qna 검색
		List<QnaDTO> list=sqlMap.selectOne("QnAJoin", idx);
		return list;
	}

	public List<QnaDTO> QnAList() {//qna 리스트 보기
		List<QnaDTO> list=sqlMap.selectList("QnAList");
		return list;
	}
	
	public int getIdx(int idx) {
		int result=sqlMap.selectOne("getIdx", idx);
		return result;
	}
	
	public int getRef() {
		int result=sqlMap.selectOne("getRef");
		return result;
	}
}
