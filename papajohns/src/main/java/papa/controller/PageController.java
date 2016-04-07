package papa.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


@Controller
public class PageController {
	@RequestMapping("/test.do")
	public String test(){
		return "test/test";
		
	}
	
	@RequestMapping("/testChat.do")
	public String testChat(){
		return "test/testChat";
		
	}
	
	@RequestMapping("/classRoomForm.do")//내강의실Form 이동
	public String classRoomForm(){
		return "class/classRoomForm";
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
