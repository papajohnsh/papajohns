package papa.quiz.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;



public class quizDAOImple implements quizDAO {
private SqlSessionTemplate sqlMap;





	
	public quizDAOImple(SqlSessionTemplate sqlMap) {
	super();
	this.sqlMap = sqlMap;
}

	public int quizAdd(quizDTO dto) {//퀴즈등록
		int result=sqlMap.insert("quizAdd",dto);
		return result;
	}
	
	@Override
		public int quizUpdate(quizDTO dto) { //퀴즈 수정
			int result=sqlMap.insert("quizUpdate", dto);
			return result;
		}

	@Override
	public List<quizDTO> quizList() { 
		List<quizDTO> result=sqlMap.selectList("quizList");
		return result;

	}


	@Override
	public List<quizDTO> quizList2(int idx) {
		List<quizDTO> list=sqlMap.selectList("quizList2",idx);
		return list;
	}

}
