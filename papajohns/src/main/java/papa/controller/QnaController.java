package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.qna.model.QnaDAO;
import papa.qna.model.QnaDTO;
import papa.qnare.model.QnaReDAO;
import papa.qnare.model.QnaReDTO;

@Controller
public class QnaController {
	@Autowired
	private QnaDAO qnaDao;

	public QnaDAO getQnaDao() {
		return qnaDao;
	}

	public void setQnaDao(QnaDAO qnaDao) {
		this.qnaDao = qnaDao;
	}
	
	@Autowired
	private QnaReDAO qnareDao;
	
	
	public QnaReDAO getQnareDao() {
		return qnareDao;
	}

	public void setQnareDao(QnaReDAO qnareDao) {
		this.qnareDao = qnareDao;
	}

	@RequestMapping("/qnaList.do")//qna 리스트 보기
	public ModelAndView qnaList(){
		
		List<QnaDTO> list=qnaDao.QnAList();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("qna/qnaList");
		return mav;
		
	}
	
	@RequestMapping("/qnaWriteForm.do")//글쓰기 폼
	public String qnaWriteForm(){
		return "qna/qnaWriteForm";
	}
	
	@RequestMapping("/qnaWrite.do")//글쓰기 등록
	public ModelAndView qnaWrite(QnaDTO dto){
		
		int count=qnaDao.QnAAdd(dto);
		String msg=count>0?"글쓰기성공":"글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("qna/qnaMsg");
		return mav;
	}
	
	@RequestMapping("/qnaContent.do")//본문내용보기
	public ModelAndView qnaContent(@RequestParam("idx") int idx){
		
		List<QnaDTO> list=qnaDao.QnAJoin(idx);
		List<QnaReDTO> reList=qnareDao.QnArebbsList(idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("reList", reList);
		mav.setViewName("qna/qnaContent");
		return mav;
	}
	
	@RequestMapping("/qnaReWriteForm.do")//답변글쓰기 폼
	public ModelAndView qnaReWriteForm(int idx){
		
		int result=qnaDao.getIdx(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("result", result);
		return mav;
	}
	
	@RequestMapping("/qnaReWrite.do")//답변글쓰기 등록
	public ModelAndView qnaReWrite(QnaReDTO dto){
		
		int result=qnareDao.qnaReWrite(dto);
		String msg=result>0?"답변글쓰기 성공":"답변글쓰기 실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("qna/qnaMsg");
		return mav;
	}
	
}
