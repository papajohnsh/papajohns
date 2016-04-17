package papa.plan.model;

import org.mybatis.spring.SqlSessionTemplate;

import papa.notice.model.NoticeDTO;

public class PlanDAOImple implements PlanDAO {
	private SqlSessionTemplate sqlMap;

	public PlanDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public String getPlan(String id) {
		String plan=sqlMap.selectOne("getPlan", id);
		return plan;
	}
	
	
}
