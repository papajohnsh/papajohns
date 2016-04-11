package papa.quiztest.model;

import org.mybatis.spring.SqlSessionTemplate;

public class quizTestDAOImple implements quizTestDAO {
	private SqlSessionTemplate sqlMap;
	




	public quizTestDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}





	@Override
	public int quizTestSave(quizTestDTO dto) {
		int result=sqlMap.insert("quizTestSave",dto);
		return result;
	}

}
