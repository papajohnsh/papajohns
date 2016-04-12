package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.designbbs.model.DesignBbsDAO;
import papa.designbbs.model.DesignBbsDTO;

@Controller
public class DesignBbsController {
	
	@Autowired
	private DesignBbsDAO designbbsDao;

	public DesignBbsDAO getDesignbbsDao() {
		return designbbsDao;
	}

	public void setDesignbbsDao(DesignBbsDAO designbbsDao) {
		this.designbbsDao = designbbsDao;
	}
	
	@RequestMapping("/designWriteForm.do")//디자인 글쓰기 폼
	public String designWriteForm(){
		return "designbbs/designWriteForm";
	}
	
	@RequestMapping("/designWrite.do")//디자인 글 등록
	public ModelAndView designWrite(DesignBbsDTO dto){
		
		int count=designbbsDao.designWrite(dto);
		String msg=count>0?"글쓰기성공":"글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("designbbs/designMsg");
		return mav;
	}
	
	@RequestMapping("/designList.do")//디자인 리스트 보기
	public ModelAndView designList(){

		List<DesignBbsDTO> list=designbbsDao.designList();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("designbbs/designList");
		return mav;
	}
	
	@RequestMapping("/designContent.do")//디자인 본문 보기
	public ModelAndView designContent(@RequestParam("idx") int idx){
		
		int count=designbbsDao.designNum(idx);//조회수 증가
		
		DesignBbsDTO list=designbbsDao.designContent(idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.setViewName("designbbs/designContent");
		return mav;
	}
}
