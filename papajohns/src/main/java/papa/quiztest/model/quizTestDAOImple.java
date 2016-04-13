package papa.quiztest.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.experimental.ParallelComputer;
import org.mybatis.spring.SqlSessionTemplate;

import papa.quiz.model.quizDTO;

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
		//quiz_num split
		String quiz_num=dto.getQuiz_num();
		    String[] quiz_idx=quiz_num.split(",");
		    
			List<quizDTO> result = new ArrayList<quizDTO>();
			Map<String, Integer> map = new HashMap<String,Integer>();
			Map<String, Object> mInsert=new HashMap<String,Object>();
			int result2;
		    for(int i=0; i<quiz_idx.length;i++ ){
		    	
		    	//select quiz
		    	map.put("quiz_num", Integer.parseInt(quiz_idx[i]));
		    	System.out.println(map.get("quiz_num"));
		    	quizDTO dtoResult=sqlMap.selectOne("quizTestUpdate", map);
/*				result.add(dtoResult);*/
				
				//insert quiz
				result2=sqlMap.update("quizTestInsert",dtoResult);
				
			}
		return 0;
	}
	

}

