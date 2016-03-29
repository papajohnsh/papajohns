package papa.test.model;

import org.mybatis.spring.SqlSessionTemplate;

public class TestDAOImple implements TestDAO {
	
	private SqlSessionTemplate sqlMap;

	public TestDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int testAdd(TestDTO dto) {
		System.out.println(dto.getNum1());
		int result=sqlMap.insert("testInsert", dto);
		return result;
	}


	
	
}
