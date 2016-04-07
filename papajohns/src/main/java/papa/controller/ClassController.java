package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.class_.model.classDAO;
import papa.class_.model.classDTO;

@Controller
public class ClassController {
	
	@Autowired
	private classDAO classDao;
	
	
	public classDAO getClassDao() {
		return classDao;
	}


	public void setClassDao(classDAO classDao) {
		this.classDao = classDao;
	}


	@RequestMapping("/makeClassAdd.do")
	public ModelAndView makeClass(classDTO dto){
		System.out.println("컨롤러진입");
		int result=classDao.makeClassAdd(dto);
		ModelAndView mav=new ModelAndView();
		String msg=result>0?"수업생성성공":"실패";
		mav.addObject("msg",msg);
		mav.setViewName("class/Msg");
		return mav;
	}
	@RequestMapping("/classRoomNameSearchForm.do")
	public ModelAndView classRoomNameSearchForm(@RequestParam("num")String num){
		ModelAndView mav=new ModelAndView();
		mav.addObject("num",num);
		mav.setViewName("find/findListForm");
		return mav;
		
	}
	@RequestMapping("/classRoomNameSearch.do")
	public ModelAndView classRoomNameSearch(@RequestParam(value="subject",required=false)String subject,@RequestParam("num")String num,
			@RequestParam(value="institut",required=false)String institut,@RequestParam(value="name",required=false)String name,
			@RequestParam(value="class_date",required=false)String class_date,@RequestParam(value="class_time",required=false)String class_time){
		List<String> list=classDao.classRoomNameSearch(subject);
		List<String> list2=classDao.institutSearch(institut);
		List<String> list3=classDao.nameSearch(name);
		List<String> list4=classDao.class_dateSearch(class_date);
		List<String> list5=classDao.class_timeSearch(class_time);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("list2",list2);
		mav.addObject("list3",list3);
		mav.addObject("list4",list4);
		mav.addObject("list5",list5);
		mav.addObject("num",num);
		mav.setViewName("find/findListForm");
		return mav;
		
	}

}
