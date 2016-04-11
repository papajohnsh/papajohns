package papa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import papa.class_.model.classDAO;
import papa.class_.model.classDTO;


@Controller
public class PageController {
	
	@Autowired
	private classDAO classDao;
	
	
	
	public classDAO getClassDao() {
		return classDao;
	}

	public void setClassDao(classDAO classDao) {
		this.classDao = classDao;
	}

	@RequestMapping("/test.do")
	public String test(){
		return "test/test";
		
	}
	
	@RequestMapping("/testChat.do")
	public String testChat(){
		return "test/testChat";
		
	}
	
	@RequestMapping("/classRoomForm.do")//내강의실Form 이동
	public ModelAndView classRoomForm(HttpSession session){
		System.out.println(session.getAttribute("sidx"));
		int idx=(int) session.getAttribute("sidx");
		List<classDTO> list=classDao.classDesign(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("class/classRoomForm");
		return mav;
	}
	
	@RequestMapping("classShow.do")//내강의 보기 폼 이동
	public String classShow(){
		return "class/classShow";
	}

	@RequestMapping("/makeClass.do")
	public String makeClass(){
		return "class/makeClass";
	}
	
	@RequestMapping("/classForm.do")
	public ModelAndView classForm(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("class/classForm");
		return mav;
	}
	
	@RequestMapping("/makeClassRoom.do")
	public String makeClassRoom(){
		return "class/makeClassRoom";
	}
	
	@RequestMapping("/supportForm.do")//고객지원Form 이동
	public ModelAndView supportForm(){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("support/supportForm");
		return mav;
	}
	@RequestMapping("/memberAddForm.do")
	public String memberAddForm(){
		return "member/memberAddForm";
	}
	
	@RequestMapping("/findListForm.do")//검색 Form 이동
	public ModelAndView findListForm(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("find/findListForm");
		return mav;
	}

}
