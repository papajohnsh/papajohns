package papa.controller;


import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.class_.model.classDAO;
import papa.class_.model.classDTO;
import papa.member.model.MemberDTO;
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
	@RequestMapping("/popup.do")
	public ModelAndView classJoin(@RequestParam(value="idx",required=false)String idx){
		
		
		List<classDTO> list=classDao.classJoin(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("class/classJoin");
		return mav;
	}
	@RequestMapping("/classAttend.do")
	public ModelAndView classAttend(HttpSession session,int reidx){
		
		int idx=(int) session.getAttribute("sidx");
		String list=classDao.reidxList(idx);
		
		if(list==null){
			list="0";
		}
		list=list+","+reidx;
		
		int result=classDao.classAddUpdate(list, idx);
		
		System.out.println(idx);
		System.out.println(result);
		String msg=result>0?"참가성공":"참가 실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("class/addMsg");
		return mav;
		
	
	}
	@RequestMapping("/classDesign.do")
	public ModelAndView classDesign(@RequestParam(value="idx",required=false)int idx){
		
		List<classDTO> list=classDao.classDesign(idx);
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("list",list);
		mav.setViewName("class/classDesign");
		return mav;
	}
	@RequestMapping("/designJoin.do")
	public ModelAndView designJoin(int idx){
		String list=classDao.reidxList(idx);
		if(list==null){
			list="0";
		}
	String[] list2=list.split(",");
	ModelAndView mav=new ModelAndView();
	for(int i=0; i<list2.length;i++){
		String to = list2[i];
			if(list2[i].equals(to)){
				System.out.println(to);
				List<MemberDTO>list3=classDao.designJoin(to);
				mav.addObject("list",list3);
				mav.addObject("idx",idx);
				mav.setViewName("class/designJoin");
				
			}
	}
		
	
	
	
	

	return mav;
	}
	
}
