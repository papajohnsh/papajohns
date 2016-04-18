package papa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.notice.model.NoticeDAO;
import papa.notice.model.NoticeDTO;

@Controller
public class NoticeController {
	@Autowired
	private NoticeDAO noticeDao;

	public NoticeDAO getNoticeDao() {
		return noticeDao;
	}

	public void setNoticeDao(NoticeDAO noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	@RequestMapping("/noticeWriteForm.do")//공지사항 폼
	public String noticeWrite(){
		return "notice/noticeWriteForm";
	}
	
	@RequestMapping("/noticeWrite.do")//공지사항 글 등록
	public ModelAndView noticeWrite(NoticeDTO dto){
		
		int count=noticeDao.noticeWrite(dto);
		String msg=count>0?"글쓰기성공":"글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("notice/noticeMsg");
		return mav;
		
	}
	
	@RequestMapping("/noticeList.do")//공지사항 리스트 보기
	public ModelAndView noticeList(HttpServletRequest req){
		
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
	      
	      String pageStr=papa.page.PageMaker.goPage("noticeList.do", totalCnt, listSize, pageSize, cp);
	      
	      int startNum=(cp-1)*listSize;
		  int endNum=cp*listSize;
		      
	      Map map=new HashMap();
	      map.put("startNum", startNum);
	      map.put("endNum", endNum);
		
		List<NoticeDTO> list=noticeDao.noticeList(map);		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("notice/noticeList");
		return mav;
	}
	
	@RequestMapping("/noticeContent.do")//공지사항 본문 보기
	public ModelAndView noticeContent(@RequestParam("idx") int idx){
		
		int count=noticeDao.noticeNum(idx);//조회수 증가
		NoticeDTO list=noticeDao.noticeContent(idx);//본문내용리스트
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.setViewName("notice/noticeContent");
		return mav;
	}
	
	@RequestMapping("/noticeFind.do")//공지사항 검색
	public ModelAndView noticeFind(@RequestParam("fkey") String fkey, @RequestParam("fvalue") String fvalue){
		
		Map<String, String> map=new HashMap();
		map.put("fkey", fkey);
		map.put("fvalue", fvalue);
		
		System.out.println("fkey="+fkey+"/"+"fvalue="+fvalue);
		
		List<NoticeDTO> list=noticeDao.noticeFind(map);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("notice/noticeFind");
		return mav;
	}

}
