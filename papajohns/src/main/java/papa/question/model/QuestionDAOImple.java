package papa.question.model;

import org.mybatis.spring.SqlSessionTemplate;

public class QuestionDAOImple implements QuestionDAO {

	private SqlSessionTemplate sqlMap;
	
	public QuestionDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	@Override
	public int question(QuestionDTO dto) {
		int result=sqlMap.insert("question", dto);
		return result;
	}

}
