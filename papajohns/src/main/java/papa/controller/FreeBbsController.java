package papa.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.freebbs.model.FreeBbsDAO;
import papa.freebbs.model.FreeBbsDTO;
import papa.qnare.model.QnaReDAO;
import papa.qnare.model.QnaReDTO;

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

	@Autowired
	private QnaReDAO qnareDao;
	
	
	public QnaReDAO getQnareDao() {
		return qnareDao;
	}

	public void setQnareDao(QnaReDAO qnareDao) {
		this.qnareDao = qnareDao;
	}
	
	@RequestMapping("/bbsListForm.do")//게시판Form 이동,list 보여주기
	public ModelAndView bbsListForm(){
		
		List<FreeBbsDTO> list=freebbsDao.freeBbsList();
		
		ModelAndView mav= new ModelAndView();
		
		mav.addObject("list", list);
		mav.setViewName("bbs/bbsListForm");
		return mav;
	}
	
	@RequestMapping("/bbsWriteAdd.do")//게시판 글쓰기 폼
	public String bbsWriteAdd(){
		return "bbs/bbsWriteAdd";
	}
	
	@RequestMapping("/bbsWrite.do")//게시판 글쓰기 등록
	public ModelAndView bbsWrite(FreeBbsDTO dto){
		
		int result=freebbsDao.bbsWriteAdd(dto);
		String msg=result>0?"글쓰기 성공":"글쓰기 실패";
		
		/*List<FreeBbsDTO> list=freebbsDao.freeBbsList();*/
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		/*mav.addObject("list", list);*/
		mav.setViewName("bbs/bbsMsg");
		/*mav.setViewName("bbs/bbsWriteAdd");*/
		return mav;
		
	}
	
	@RequestMapping("/bbsReWriteAdd.do")//게시판 답변 글쓰기 폼
	public String bbsReWriteAdd(){
		return "bbs/bbsReWriteAdd";
	}
	
	@RequestMapping("/bbsReWrite.do")//게시판 답변 글쓰기 등록
	public ModelAndView bbsReWrite(FreeBbsDTO dto){
		
		int result=freebbsDao.bbsReWriteAdd(dto);
		String msg=result>0?"답변글쓰기성공":"답변글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("bbs/bbsMsg");
		return mav;
		
	}
	
	@RequestMapping("/bbsContent.do")//게시판 본문내용보기
	public ModelAndView bbsContent(@RequestParam("idx") int idx){
		int count= freebbsDao.readNum(idx);
		//List<QnaReDTO> reList=qnareDao.QnArebbsList(idx);
		FreeBbsDTO list=freebbsDao.bbsContent(idx);
		
		
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		//mav.addObject("reList", reList);
		mav.addObject("count", count);
		mav.setViewName("bbs/bbsContent");
		return mav;
	}
	
	
	
}
