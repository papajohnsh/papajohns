package papa.faq.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class FaqDAOImple implements FaqDAO {

	private SqlSessionTemplate sqlMap;

	public FaqDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int faqWrite(FaqDTO dto) {//글쓰기 등록
		int count=sqlMap.insert("faqWrite", dto);
		return count;
	}

	public List<FaqDTO> faqList() {//faq 리스트 보기
		
		/*int startNum=(cp-1)*ls+1;
		int endNum=cp*ls;
		
		Map map=new HashMap();
		map.put("startNum", startNum);
		map.put("endNum", endNum);*/
		
		List<FaqDTO> list=sqlMap.selectList("faqList");
		return list;
	}


	public FaqDTO faqContent(int idx) {//본문내용 보기
		FaqDTO list=sqlMap.selectOne("faqContent", idx);
		return list;
	}
		
	public int faqNum(int idx) {//조회수 증가
		int count=sqlMap.update("faqNum", idx);
		return count;
	}

	public List<FaqDTO> faqFind(Map<String, String> map) {//faq검색
		List<FaqDTO> list2=sqlMap.selectList("faqFind", map);
		return list2;
	}

	public int getTotalCnt() {
		int count=sqlMap.selectOne("totalCnt");
		return count;
	}

}
