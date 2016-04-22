package papa.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import papa.class_.model.classDAO;
import papa.class_.model.classDTO;
import papa.notice.model.NoticeDAO;
import papa.notice.model.NoticeDTO;

@Controller
public class IndexController {
	@Autowired
	private NoticeDAO noticeDao;
	@Autowired
	private classDAO classDao;
	
		public classDAO getClassDao() {
		return classDao;
	}


	public void setClassDao(classDAO classDao) {
		this.classDao = classDao;
	}


		public NoticeDAO getNoticeDao() {
		return noticeDao;
	}


	public void setNoticeDao(NoticeDAO noticeDao) {
		this.noticeDao = noticeDao;
	}

		@RequestMapping("/index.do")
		public ModelAndView index(HttpServletRequest req, HttpSession session){
			ModelAndView mav=new ModelAndView();
			if(session.getAttribute("sidx")!=null){
			int idx=(int) session.getAttribute("sidx");
			String list1=classDao.reidxList(idx);
			if(list1!=null){
				List<classDTO> list5=new ArrayList<>();
				String list2=list1.substring(2);
				System.out.println(list2);
			    String[] list3=list2.split(",");
			    for(int i=0; i<list3.length;i++){
			    	int idx2=Integer.parseInt(list3[i]);
			    	classDTO list4= classDao.joinClass(idx2);
			    	list5.add(list4);
			    	System.out.println(list5);
			    	;
			    	mav.addObject("list4",list5);
			    }
			}
			List<classDTO> list=classDao.classDesign(idx);
			
			mav.addObject("list",list);
			}
			mav.setViewName("index");
			return mav;
		
			/*
			int totalCnt=noticeDao.getTotalCnt();//총게시물 수 가져오기
			//System.out.println("1: "+totalCnt);  
			totalCnt=totalCnt==0?1:totalCnt;      //전체 게시물 수
			//System.out.println("2: "+totalCnt);
		      int listSize=5;                     //페이지에 출력할 게시물 수
		      int pageSize=5;                     //페이지 출력 수
		   
		      String cp_s=req.getParameter("cp");
		      if(cp_s==null||cp_s.equals("")){
		         cp_s="1";
		      }
		      int cp=Integer.parseInt(cp_s);
		      
		      String pageStr=papa.page.PageMaker.goPage("index.do", totalCnt, listSize, pageSize, cp);
		      
		      int startNum=(cp-1)*listSize;
			  int endNum=cp*listSize;
			      
		      Map map=new HashMap();
		      map.put("startNum", startNum);
		      map.put("endNum", endNum);
			
			
			List<NoticeDTO> list=noticeDao.noticeList(map);
			
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("pageStr", pageStr);
			mav.setViewName("index");			
			return mav;*/
		}
		
		@RequestMapping("/main.do")
		public String main(){
				return "main";
		}
			
}
