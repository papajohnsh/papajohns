package papa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import papa.plan.model.PlanDAO;

@Controller
public class PlanController {
	
	@Autowired
	private PlanDAO planDao;

	public PlanDAO getPlanDao() {
		return planDao;
	}

	public void setPlanDao(PlanDAO planDao) {
		this.planDao = planDao;
	}
	
	@RequestMapping("/myPlan.do")
	public String plan(){
		return "plan/plan";
		
	}
	
	
}
