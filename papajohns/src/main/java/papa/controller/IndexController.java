package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import papa.notice.model.NoticeDAO;
import papa.notice.model.NoticeDTO;

@Controller
public class IndexController {
	@Autowired
	private NoticeDAO noticeDao;
	
	
		public NoticeDAO getNoticeDao() {
		return noticeDao;
	}


	public void setNoticeDao(NoticeDAO noticeDao) {
		this.noticeDao = noticeDao;
	}

		@RequestMapping("/index.do")
		public ModelAndView index(){
			
			List<NoticeDTO> list=noticeDao.noticeList();
			
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.setViewName("index");			
			return mav;
		}
}
