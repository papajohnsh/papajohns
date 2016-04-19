package papa.quizAnswer.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class quizAnswerDAOImple implements quizAnswerDAO {
	private SqlSessionTemplate sqlMap;
	
	public quizAnswerDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	@Override
	public int quizAnswer(quizAnswerDTO dto) {
		int result=sqlMap.insert("quizAnswer",dto);
		return result;
	}
	@Override
	public List<quizAnswerDTO> quizResult(int idx) {
		List<quizAnswerDTO> result=sqlMap.selectList("quizResult", idx);
		return result;
	}
}
