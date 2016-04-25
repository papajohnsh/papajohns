package papa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import papa.question.model.QuestionDAO;
import papa.question.model.QuestionDTO;

@Controller
public class QuestionController {

	@Autowired
	private QuestionDAO questionDao;

	public QuestionDAO getQuestionDao() {
		return questionDao;
	}

	public void setQuestionDao(QuestionDAO questionDao) {
		this.questionDao = questionDao;
	}
	
	@RequestMapping("/quest.do")
	public ModelAndView question(QuestionDTO dto){
		int result=questionDao.question(dto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("msg");
		return mav;
	}
	
	
}
