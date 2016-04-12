package papa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import papa.member.model.*;
@Controller
public class MyLessonController {
	@Autowired
	private MemberDAO dao;
	
	public MemberDAO getDao() {
		return dao;
	}

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/studentList.do")
	public ModelAndView studentList(){
		
		List<MemberDTO> result= dao.studentList();
			for(int i=0; i<result.size();i++){	
				System.out.println(result.get(i).getId());
			}
		ModelAndView mav=new ModelAndView();
		mav.addObject("result",result);
		mav.setViewName("class/studentList");
		return mav;
	}
	@RequestMapping("/classQuiz.do")
	public String classQuiz(){
		return "class/classQuiz";
	}
	@RequestMapping("/question.do")
	public String question(){
		return "web/chat-ws";
	}

}
