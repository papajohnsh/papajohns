package papa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.faq.model.FaqDAO;
import papa.faq.model.FaqDTO;

@Controller
public class FaqController {
	@Autowired
	private FaqDAO faqDao;
	

	public FaqDAO getFaqDao() {
		return faqDao;
	}

	public void setFaqDao(FaqDAO faqDao) {
		this.faqDao = faqDao;
	}

	@RequestMapping("/faqList.do")//faq 리스트 보기
	public ModelAndView faqList(HttpServletRequest req){
		
		int totalCnt=faqDao.getTotalCnt();//총게시물 수 가져오기
		totalCnt=totalCnt==0?1:totalCnt;      //전체 게시물 수
		int listSize=5;//보여줄 리스트 수
		int pageSize=5;//보여줄 페이지 수
		
		String cp_s=req.getParameter("cp");
	      if(cp_s==null||cp_s.equals("")){
	         cp_s="1";
	      }
	      int cp=Integer.parseInt(cp_s);
	      
	     String pageStr=papa.page.PageMaker.goPage("faqList.do", totalCnt, listSize, pageSize, cp);
	     
	     int startNum=(cp-1)*listSize;
	     int endNum=cp*listSize;
	     
	     Map map=new HashMap();
	      map.put("startNum", startNum);
	      map.put("endNum", endNum);
	      
		List<FaqDTO> list=faqDao.faqList(map);		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("faq/faqList");
		return mav;
	}
	
	@RequestMapping("/faqWriteForm.do")//faq 글쓰기 폼
	public String faqWriteForm(){
		return "faq/faqWriteForm";
	}
	
	@RequestMapping(value="/faqWrite.do",method=RequestMethod.POST)//faq 글쓰기 등록
	public ModelAndView faqWrite(FaqDTO dto){
		
		int count=faqDao.faqWrite(dto);
		String msg=count>0?"글쓰기 성공!":"글쓰기 실패!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("faq/faqMsg");
		return mav;
	}
	
	@RequestMapping("/faqContent.do")//본문내용 보기
	public ModelAndView faqContent(@RequestParam(value="idx",required=false) int idx,@RequestParam("nickname") String nickname){
		
		int count=faqDao.faqNum(idx);//조회수 증가
		FaqDTO list=faqDao.faqContent(idx);
		
		String msg="";
		String url="";
		
		if(!list.getWriter().equals(nickname)){
			
			ModelAndView mav=new ModelAndView();
			msg="잠금";
			url="faq/faqList";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("faq/faqMsg");
			return mav;
			
		}else{
			
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("count", count);
			mav.setViewName("faq/faqContent");
			return mav;
		}
		
	}
	
	@RequestMapping(value="/faqFind.do",method=RequestMethod.POST)
	public ModelAndView faqFind(@RequestParam("fkey") String fkey, @RequestParam("fvalue") String fvalue){
		
		Map<String, String> map=new HashMap<String, String>();
		map.put("fkey", fkey);
		map.put("fvalue", fvalue);
		
		System.out.println(fkey+"/"+fvalue);
		
		List<FaqDTO> list2=faqDao.faqFind(map);
		System.out.println(list2);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list2", list2);
		mav.setViewName("faq/faqFind");
		return mav;
	}

}
