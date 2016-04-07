package papa.class_.model;

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

}
