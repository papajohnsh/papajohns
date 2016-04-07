package papa.qnare.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class QnaReDAOImple implements QnaReDAO {

	private SqlSessionTemplate sqlMap;

	public SqlSessionTemplate getSqlMap() {
		return sqlMap;
	}

	public void setSqlMap(SqlSessionTemplate sqlMap) {
		this.sqlMap = sqlMap;
	}
	
	
	public List<QnaReDTO> QnArebbsList(int idx) {
		List<QnaReDTO> list=sqlMap.selectList("QnArebbsList", idx);
		return list;
	}
	
	public int qnaReWrite(QnaReDTO dto) {
		int result=sqlMap.insert("QnArebbsAdd", dto);
		return result;
	}
	
}
