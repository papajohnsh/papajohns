package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.faq.model.FaqDAO;
import papa.faq.model.FaqDTO;

@Controller
public class FaqController {
	@Autowired
	private FaqDAO faqDao;
	

	public FaqDAO getFaqDao() {
		return faqDao;
	}

	public void setFaqDao(FaqDAO faqDao) {
		this.faqDao = faqDao;
	}

	@RequestMapping("/faqList.do")//faq 리스트 보기
	public ModelAndView faqList(){
		
		List<FaqDTO> list=faqDao.faqList();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("faq/faqList");
		return mav;
	}
	
	@RequestMapping("/faqWriteForm.do")//faq 글쓰기 폼
	public String faqWriteForm(){
		return "faq/faqWriteForm";
	}
	
	@RequestMapping("/faqWrite.do")//faq 글쓰기 등록
	public ModelAndView faqWrite(FaqDTO dto){
		
		int count=faqDao.faqWrite(dto);
		String msg=count>0?"글쓰기 성공!":"글쓰기 실패!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("faq/faqMsg");
		return mav;
	}
	
	@RequestMapping("/faqContent.do")//본문내용 보기
	public ModelAndView faqContent(@RequestParam("idx") int idx){
		
		int count=faqDao.faqNum(idx);//조회수 증가
		FaqDTO list=faqDao.faqContent(idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.setViewName("faq/faqContent");
		return mav;
	}

}
