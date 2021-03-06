package papa.question.model;

import org.mybatis.spring.SqlSessionTemplate;
import java.util.*;
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
	@Override
	public List<QuestionDTO> questionView(String id) {
		List<QuestionDTO> list=sqlMap.selectList("questionView",id);
		return list;
	}

}
