package papa.plan.model;

import org.mybatis.spring.SqlSessionTemplate;

public class PlanDAOImple implements PlanDAO {
	private SqlSessionTemplate sqlMap;

	public PlanDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	
}
