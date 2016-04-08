package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.qna.model.QnaDAO;
import papa.qna.model.QnaDTO;


/*@Controller
public class QnaController {
	@Autowired
	private QnaDAO qnaDao;

	public QnaDAO getQnaDao() {
		return qnaDao;
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

		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
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
	

	
}*/
