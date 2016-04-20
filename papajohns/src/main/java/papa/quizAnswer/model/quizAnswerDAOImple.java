
package papa.quizAnswer.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<quizAnswerDTO> quizResult(int idx, int paper_idx) {
		
		Map map=new HashMap<>();
		map.put("idx", idx);
		map.put("paper_idx", paper_idx);
		List<quizAnswerDTO> result=sqlMap.selectList("quizResult", map);
		
		return result;
	}
	@Override
	public String quizJoin(int idx, String id) {
		Map map = new HashMap();
		map.put("idx", idx);
		map.put("id", id);
		String result = sqlMap.selectOne("quizJoin", map);
		System.out.println("-------------------------------------"+result);
		return result;
	}
}