package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.qna.model.QnaDAO;
import papa.qna.model.QnaDTO;
import papa.qna.model.QnaReDTO;


@Controller
public class QnaController {
	@Autowired
	private QnaDAO qnaDao;

	public QnaDAO getQnaDao() {
		return qnaDao;
	}

	@RequestMapping("/qnaList.do")//qna 리스트 보기
	public ModelAndView qnaList(){
		
		List<QnaDTO> list=qnaDao.qnaList();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("qna/qnaList");
		return mav;
		
	}
	
	@RequestMapping("/qnaWriteForm.do")//qna 글쓰기 폼
	public String qnaWriteForm(){
		return "qna/qnaWriteForm";
	}
	
	@RequestMapping("/qnaWrite.do")//qna 글쓰기 등록
	public ModelAndView qnaWrite(QnaDTO dto){
		
		int count=qnaDao.qnaWrite(dto);
		String msg=count>0?"글쓰기성공":"글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("qna/qnaMsg");
		return mav;
	}
	
	@RequestMapping("/qnaContent.do")//본문내용보기
	public ModelAndView qnaContent(@RequestParam(value="idx",required=false) int idx){
		
		int count=qnaDao.qnaNum(idx);//조회수 증가

		QnaDTO list=qnaDao.qnaContent(idx);//본문내용리스트
		List<QnaReDTO> reList=qnaDao.qnaReList(idx);//댓글리스트
	
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("reList", reList);
		mav.addObject("count", count);
		mav.setViewName("qna/qnaContent");
		return mav;
	}
	
	@RequestMapping("/qnaReWriteForm.do")//댓글쓰기 폼
	public ModelAndView qnaReWriteForm(@RequestParam(value="idx",required=false) int re_idx){
		
		int result=qnaDao.getIdx(re_idx);//본문 idx 가져오기

		ModelAndView mav=new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName("qna/qnaReWriteForm");
		return mav;
	}
	
	@RequestMapping("/qnaReWrite.do")//댓글 등록
	public ModelAndView qnaReWrite(QnaReDTO dto){
		
		int count=qnaDao.qnaReWrite(dto);
		String msg=count>0?"댓글쓰기성공":"댓글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("qna/qnaMsg");
		return mav;
		
		
	}
	
}
