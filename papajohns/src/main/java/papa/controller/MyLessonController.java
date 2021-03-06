package papa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import papa.class_.model.*;

import javax.servlet.http.HttpSession;

import papa.member.model.*;
import papa.question.model.QuestionDAO;
import papa.question.model.QuestionDTO;
@Controller
public class MyLessonController {
	@Autowired
	private MemberDAO dao;
	@Autowired
	private classDAO classDao;
	@Autowired
	private QuestionDAO questionDao;
	
	public QuestionDAO getQuestionDao() {
		return questionDao;
	}

	public void setQuestionDao(QuestionDAO questionDao) {
		this.questionDao = questionDao;
	}

	public classDAO getClassDao() {
		return classDao;
	}

	public void setClassDao(classDAO classDao) {
		this.classDao = classDao;
	}

	public MemberDAO getDao() {
		return dao;
	}

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/studentList.do")//학생리스트
	public ModelAndView studentList(@RequestParam(value="idx") int idx){
		System.out.println("현재 반 idx 번호:"+idx);
		
		List<MemberDTO> list=dao.allMember();
		List<MemberDTO> list2=new ArrayList<>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getReidx()!=null){
				String reidx_s=list.get(i).getReidx().substring(2);
				String reidx[]=reidx_s.split(",");
				for(int j=0; j<reidx.length;j++){
					if(Integer.parseInt(reidx[j])==idx){
						list2.add(list.get(i));
					}
				}
			}
		}

		ModelAndView mav=new ModelAndView();
		mav.addObject("result",list2);
		mav.setViewName("class/studentList");
		return mav;
	}
	@RequestMapping("/lessonSchedule.do")
	public ModelAndView lessonSchedule(HttpSession session){
		int idx=(int)session.getAttribute("sidx");
		List<classDTO> result= classDao.classDesign(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", result);
		mav.setViewName("class/lessonSchedule");
		return mav;
		
	}
	@RequestMapping("/stuendtSchedule.do")
	public ModelAndView studentSchedule(HttpSession session){
		int idx_i=(int)session.getAttribute("sidx");
		String idx_s=classDao.reidxList(idx_i);
		System.out.println("강의실목록:"+idx_s);
		String idx=idx_s.substring(2);
		System.out.println("분리idx"+idx);
		List<classDTO> list=new ArrayList<classDTO>();
		String[] reidx=idx.split(",");
		for(int i=0;i<reidx.length;i++ ){
		classDTO result= classDao.schedule(reidx[i]);
		list.add(result);
		}
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("class/studentSchedule");
		return mav;
		
	}
	@RequestMapping("/classQuiz.do")
	public String classQuiz(){
		return "class/classQuiz";
	}
	@RequestMapping("/questionForm.do")
	public String questionForm(){
		return "class/questionForm";
	}
	@RequestMapping("/question.do")
	public String question(){
		return "web/chat-ws";
	}
	@RequestMapping("/showMessage.do")
	public ModelAndView showMessage(HttpSession session){
		String id=(String)session.getAttribute("sid");
		System.out.println(id);
		List<QuestionDTO> list=questionDao.questionView(id);
		System.out.println(list.get(0).getContent());
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("class/Message");
		return mav;
	}

}
