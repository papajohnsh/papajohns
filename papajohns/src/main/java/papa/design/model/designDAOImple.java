package papa.design.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class designDAOImple implements designDAO {
	  private SqlSessionTemplate sqlMap;
		
		
	public designDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	@Override
	public int designAdd(String send,int reidx) {
		Map map=new HashMap();
		map.put("send",send);
		map.put("reidx",reidx);
		int result=sqlMap.insert("designAdd",map);
		return result;
	}
	
	@Override
	public List<designDTO> myClassRoom(int idx) {
		List<designDTO> list=sqlMap.selectList("myClassRoom",idx);
		return list;
	}
	 @Override
	public String send(int idx) {
		String list= sqlMap.selectOne("send",idx);
		return list;
	}

}
