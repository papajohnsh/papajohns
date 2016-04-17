package papa.controller;

import java.lang.reflect.Array;

import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLEditorKit.Parser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

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
		return "plan/myPlan";
		
	}
	
	@RequestMapping("/myInfoPlan.do")
	public ModelAndView myInfoPlan(HttpSession session) throws ParseException
	{
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg","하이루");
		mav.setViewName("plan/myInfoPlan");
		return mav;
	}
	/*
	@RequestMapping(value = "/planSave.do")
	public String planSave(@RequestParam ){
		String id = (String)session.getAttribute("sid");
		String plan=planDao.getPlan(id);
		return plan;
	}
	*/
}
