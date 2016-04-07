package papa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import papa.test.model.TestDAO;
import papa.test.model.TestDTO;

@Controller
public class TestController {
	
	@Autowired
	private TestDAO testDao;
	
	public TestDAO getTestDao() {
		return testDao;
	}

	public void setTestDao(TestDAO testDao) {
		this.testDao = testDao;
	}

	/*
	@RequestMapping("/test.do")
	public ModelAndView test(TestDTO dto){
		int result=testDao.testAdd(dto);
		String msg=result>0?"테스트 등록 성공!":"테스트 등록 실패!";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("test/testMsg");
		return mav;
	}
	*/
}
