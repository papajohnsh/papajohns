package papa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.class_.model.classDAO;
import papa.class_.model.classDTO;

@Controller
public class ClassController {
	
	@Autowired
	private classDAO classDao;
	
	
	public classDAO getClassDao() {
		return classDao;
	}


	public void setClassDao(classDAO classDao) {
		this.classDao = classDao;
	}


	@RequestMapping("/makeClassAdd.do")
	public ModelAndView makeClass(classDTO dto){
		System.out.println("컨롤러진입");
		int result=classDao.makeClassAdd(dto);
		ModelAndView mav=new ModelAndView();
		String msg=result>0?"수업생성성공":"실패";
		mav.addObject("msg",msg);
		mav.setViewName("class/Msg");
		return mav;
	}

}
