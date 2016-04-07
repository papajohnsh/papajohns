package papa.class_.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class classDAOImple implements classDAO {
	
  private SqlSessionTemplate sqlMap;
	
	
	

	public classDAOImple(SqlSessionTemplate sqlMap) {
	super();
	this.sqlMap = sqlMap;
}

   public int makeClassAdd(classDTO dto) {
		int result=sqlMap.insert("classAdd",dto);
	   
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

}
