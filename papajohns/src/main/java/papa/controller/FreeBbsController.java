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
	public ModelAndView freeBbsFind(@RequestParam("fkey") String fkey, @RequestParam("fvalue") String fvalue){
		
		Map<String, String> map=new HashMap();
		map.put("fkey", fkey);
		map.put("fvalue", fvalue);
		
		System.out.println(fkey+"/"+fvalue);
		
		List<FreeBbsDTO> list3=freebbsDao.freeBbsFind(map);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list3", list3);
		mav.setViewName("freebbs/bbsFind");
		return mav;
	}
	
}
