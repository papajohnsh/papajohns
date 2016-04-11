package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.classbbs.model.ClassBbsDAO;
import papa.classbbs.model.ClassBbsDTO;

@Controller
public class ClassBbsController {

	@Autowired
	private ClassBbsDAO classbbsDao;
	
	public ClassBbsDAO getClassbbsDao() {
		return classbbsDao;
	}

	public void setClassbbsDao(ClassBbsDAO classbbsDao) {
		this.classbbsDao = classbbsDao;
	}
	
	@RequestMapping("/classBbsList.do")//게시판 리스트 보기
	public ModelAndView classBbsList(){
		
		List<ClassBbsDTO> list=classbbsDao.classList();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("classBbs/classBbsList");
		return mav;
	}
	
	@RequestMapping("/classBbsWriteForm.do")//글쓰기 폼
	public String classBbsWriteForm(){
		return "classBbs/classBbsWriteForm";
	}
	
	@RequestMapping("/classBbsWrite.do")//글쓰기 등록
	public ModelAndView classBbsWrite(ClassBbsDTO dto){
		
		int count=classbbsDao.writeAdd(dto);
		String msg=count>0?"글쓰기 성공!":"글쓰기 실패!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("classBbs/classBbsMsg");
		return mav;
	}
	
	@RequestMapping("/classBbsContent.do")//본문내용 보기
	public ModelAndView classContent(@RequestParam("idx") int idx){
		
		int count=classbbsDao.classNum(idx);
		ClassBbsDTO list=classbbsDao.classContent(idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.setViewName("classBbs/classBbsContent");
		return mav;
	}
	
	@RequestMapping("/classBbsReWriteForm.do")//답변글쓰기 폼
	public String classBbsReWriteForm(){
		return "classBbs/classBbsReWriteForm";
	}
	
	@RequestMapping("/classBbsReWrite.do")//답변글쓰기 등록
	public ModelAndView classBbsReWrite(ClassBbsDTO dto){
		
		int count=classbbsDao.reWriteAdd(dto);
		String msg=count>0?"답변글쓰기 성공!":"답변글쓰기 실패!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("classBbs/classBbsMsg");
		return mav;
	}
}
