package papa.class_.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import papa.design.model.designDTO;
import papa.member.model.MemberDTO;

public class classDAOImple implements classDAO {
	
  private SqlSessionTemplate sqlMap;
	
	
	

	public classDAOImple(SqlSessionTemplate sqlMap) {
	super();
	this.sqlMap = sqlMap;
}

   public int makeClassAdd(classDTO dto) {
		int result=sqlMap.insert("classAdd",dto);
		//System.out.println(result);
		return result;
	}
   @Override
	public List<String> classRoomNameSearch(String subject) {
		List<String> list=sqlMap.selectList("classRoomNameSearch",subject);
		return list;
	}
   @Override
	public List<String> institutSearch(String institut) {
	   List<String> list=sqlMap.selectList("institutSearch",institut);
		return list;
	}
   @Override
	public List<String> nameSearch(String name) {
	   List<String> list=sqlMap.selectList("nameSearch",name);
		return list;
	}
   @Override
	public List<String> class_dateSearch(String class_date) {
	   List<String> list=sqlMap.selectList("class_dateSearch",class_date);
		return list;
	}
   @Override
	public List<String> class_timeSearch(String class_time) {
	   List<String> list=sqlMap.selectList("class_timeSearch",class_time);
		return list;
	}
   @Override
	public List<classDTO> classJoin(String idx) {
		List<classDTO> list=sqlMap.selectList("classJoin",idx);
		return list;
	}
	
	@Override
		public int classAddUpdate(String list,int idx) {
		Map map=new HashMap();
		map.put("list", list);
		map.put("idx", idx);
			int result=sqlMap.insert("classAddUpdate",map);
			return result;
		}
	
	@Override
		public List<classDTO> classDesign(int idx) {
			List<classDTO> list=sqlMap.selectList("classJoinList",idx);
			return list;
		}
		
		@Override
			public List<MemberDTO> designJoin(String idx) {
				List<MemberDTO>list=sqlMap.selectList("designJoin",idx);
				return list;
			}
		@Override
			public String reidxList(int idx) {
				String list=sqlMap.selectOne("reidxList",idx);
				return list;
			}
		@Override
			public classDTO joinClass(int idx) {
				classDTO list= sqlMap.selectOne("joinClass",idx);
				System.out.println(list);
				return list;
			}

		@Override
		public int classDesignAdd(designDTO dto) {
			int result=sqlMap.insert("classDesignAdd",dto);
			return result;
			
		}

}
