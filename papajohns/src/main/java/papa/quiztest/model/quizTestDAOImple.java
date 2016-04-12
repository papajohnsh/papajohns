package papa.quiztest.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	@Override
	public List<quizTestDTO> quizTestList() {
		List<quizTestDTO> result=sqlMap.selectList("quizTestList");
		return result;
	}
	@Override
	public int quizTestUpdate(quizTestDTO dto) {
		String quiz_num=dto.getQuiz_num();
		    String[] quiz_idx=quiz_num.split(",");	
		    List<String> quiz=new ArrayList<String>();
			for(int i=0; i<quiz_idx.length;i++ ){
				quiz.add(quiz_idx[i]);
				System.out.println(quiz.get(i));
			}
			HashMap<String, Object> map=new HashMap<String,Object>();
			map.put("quiz_idx", quiz);
		
		List<String>result=sqlMap.selectList("quizTestUpdate",map);
		return 0;
	}
	

}
