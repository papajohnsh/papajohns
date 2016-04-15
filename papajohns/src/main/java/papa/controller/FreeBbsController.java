package papa.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.freebbs.model.FreeBbsDAO;
import papa.freebbs.model.FreeBbsDTO;
import papa.freebbs.model.FreeBbsReDTO;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Controller
public class FreeBbsController {
	
	@Autowired
	private FreeBbsDAO freebbsDao;

	public FreeBbsDAO getFreebbsDao() {
		return freebbsDao;
	}

	public void setFreebbsDao(FreeBbsDAO freebbsDao) {
		this.freebbsDao = freebbsDao;
	}

	/*@RequestMapping("/bbsListForm.do")//게시판Form 이동,list 보여주기
	public ModelAndView bbsListForm(){
		
		//sql쿼리문에선 계산을 할 수 없기 때문에 DAOImple에서 처리함
		int startNum=(cp-1)*ls+1;//시작페이지 계산
		int endNum=cp*ls;//마지막페이지 계산
		
		Map map=new HashMap();//Map객체를 생성
		map.put("startNum", startNum);//위에서 만든 startNum과 endNum을 저장
		map.put("endNum", endNum);
		
		int totalCnt=freebbsDao.getTotalCnt();//총게시물 수 가져오기
		int listSize=5;//보여줄 리스트 수
		int pageSize=5;//보여줄 페이지 수
		
		List<FreeBbsDTO> list=freebbsDao.freeBbsList(cp, listSize);
		String pageStr=papa.page.PageMaker.goPage("bbsListForm.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("freebbs/bbsListForm");
		return mav;
	}*/		
	
	@RequestMapping("/bbsListForm.do")
	   public ModelAndView bbsListForm(HttpServletRequest req){
	      
		int totalCnt=freebbsDao.getTotalCnt();//총게시물 수 가져오기
		System.out.println("1: "+totalCnt);  
		totalCnt=totalCnt==0?1:totalCnt;      //전체 게시물 수
		System.out.println("2: "+totalCnt);
	      int listSize=5;                     //페이지에 출력할 게시물 수
	      int pageSize=5;                     //페이지 출력 수
	   
	      String cp_s=req.getParameter("cp");
	      if(cp_s==null||cp_s.equals("")){
	         cp_s="1";
	      }
	      int cp=Integer.parseInt(cp_s);
	      
	      String pageStr=papa.page.PageMaker.goPage("bbsListForm.do", totalCnt, listSize, pageSize, cp);
	      	      
	      int startNum=(cp-1)*listSize+1;
	     int endNum=cp*listSize;
	      
	      Map map=new HashMap();
	      map.put("startNum", startNum);
	      map.put("endNum", endNum);
	      
	      List<FreeBbsDTO> list=freebbsDao.freeBbsList(map);
	      ModelAndView mav=new ModelAndView();
	      mav.addObject("list", list);
	      mav.addObject("pageStr", pageStr);
	      mav.setViewName("freebbs/bbsListForm");
	      return mav;
	   }
	
	
	@RequestMapping("/bbsWriteAdd.do")//게시판 글쓰기 폼
	public String bbsWriteAdd(){
		return "freebbs/bbsWriteAdd";
	}
	
	@RequestMapping(value="/bbsWrite.do",method=RequestMethod.POST)//게시판 글쓰기 등록
	public ModelAndView bbsWrite(FreeBbsDTO dto){
		
		int result=freebbsDao.bbsWriteAdd(dto);
		String msg=result>0?"글쓰기 성공":"글쓰기 실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("freebbs/bbsMsg");
		return mav;
		
	}
	
	@RequestMapping("/bbsReWriteAdd.do")//게시판 댓글 쓰기 폼
	public ModelAndView bbsReWriteAdd(@RequestParam(value="idx",required=false) int re_idx){
		int result=freebbsDao.getIdx(re_idx);//본문 idx 가져오기
		System.out.println(re_idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName("freebbs/bbsReWriteAdd");
		return mav;
	}
	
	@RequestMapping(value="/bbsReWrite.do",method=RequestMethod.POST)//게시판 댓글쓰기 등록
	public ModelAndView bbsReWrite(FreeBbsReDTO dto){
		
		int getRef=freebbsDao.getRef();//마지막 순번
		int count=freebbsDao.bbsReWrite(dto);
		String msg=count>0?"댓글쓰기성공":"댓글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("getRef", getRef+1);
		mav.setViewName("freebbs/bbsMsg");
		return mav;
		
	}
	
	@RequestMapping("/bbsContent.do")//게시판 본문내용보기
	public ModelAndView bbsContent(@RequestParam("idx") int idx){
		
		int count= freebbsDao.readNum(idx);//조회수
		
		FreeBbsDTO list=freebbsDao.bbsContent(idx);//본문내용리스트
		List<FreeBbsReDTO> reList=freebbsDao.freeBbsReList(idx);//댓글리스트
		System.out.println(reList);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("reList", reList);
		mav.addObject("count", count);
		mav.setViewName("freebbs/bbsContent");
		return mav;
	}
	
	@RequestMapping("/bbsFind.do")
	public ModelAndView bbsFind(@RequestParam(value="subject",required=false) String subject){
		//System.out.println("작성자"+writer);
		System.out.println(subject);
		//FreeBbsDTO getName=freebbsDao.bbsFindName(writer);
		List<FreeBbsDTO> getSubject=freebbsDao.bbsFindSubject(subject);
		
		ModelAndView mav=new ModelAndView();
		//mav.addObject("getName", getName);
		mav.addObject("getSubject", getSubject);
		mav.setViewName("freebbs/bbsFind");
		return mav;
	}
	
	/*@RequestMapping(value="/bbsFind.do",method=RequestMethod.POST)
	public ModelAndView bbsFind(@RequestParam("fkey") String fkey, @RequestParam("fvalue") String fvalue){
		
		Map<String, String> map=new HashMap();
		map.put("fkey", fkey);
		map.put("fvalue", fvalue);
		
		List<FreeBbsDTO> list=freebbsDao.bbsFind(map);
		
		System.out.println(fkey);
		System.out.println(fvalue);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("freebbs/bbsFind");
		return mav;
	}*/
	
}
