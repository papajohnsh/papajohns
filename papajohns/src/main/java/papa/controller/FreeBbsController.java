package papa.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.freebbs.model.FreeBbsDAO;
import papa.freebbs.model.FreeBbsDTO;
import papa.freebbs.model.FreeBbsReDTO;


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

	@RequestMapping("/bbsListForm.do")//게시판Form 이동,list 보여주기
	public ModelAndView bbsListForm(){
		
		List<FreeBbsDTO> list=freebbsDao.freeBbsList();
		
		ModelAndView mav= new ModelAndView();
		
		mav.addObject("list", list);
		mav.setViewName("freebbs/bbsListForm");
		return mav;
	}
	
	@RequestMapping("/bbsWriteAdd.do")//게시판 글쓰기 폼
	public String bbsWriteAdd(){
		return "freebbs/bbsWriteAdd";
	}
	
	@RequestMapping("/bbsWrite.do")//게시판 글쓰기 등록
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
	
	@RequestMapping("/bbsReWrite.do")//게시판 댓글쓰기 등록
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
	public ModelAndView bbsFind(@RequestParam(value="writer",required=false) String writer, @RequestParam(value="subject",required=false) String subject){
		System.out.println("작성자"+writer);
		System.out.println(subject);
		FreeBbsDTO getName=freebbsDao.bbsFindName(writer);
		FreeBbsDTO getSubject=freebbsDao.bbsFindSubject(subject);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("getName", getName);
		mav.addObject("getSubject", getSubject);
		mav.setViewName("freebbs/bbsFind");
		return mav;
	}
	
	/*@RequestMapping(value="/bbsFind.do",method=RequestMethod.POST)
	public ModelAndView bbsFind(@RequestParam("fkey") String fkey, @RequestParam("fvalue") String fvalue){
		
		List<FreeBbsDTO> list=freebbsDao.bbsFind(fkey, fvalue);
		
		System.out.println(fkey);
		System.out.println(fvalue);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("freebbs/bbsFind");
		return mav;
	}*/
	
}
