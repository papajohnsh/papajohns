package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.notice.model.NoticeDAO;
import papa.notice.model.NoticeDTO;

@Controller
public class NoticeController {
	@Autowired
	private NoticeDAO noticeDao;

	public NoticeDAO getNoticeDao() {
		return noticeDao;
	}

	public void setNoticeDao(NoticeDAO noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	@RequestMapping("/noticeWriteForm.do")//공지사항 폼
	public String noticeWrite(){
		return "notice/noticeWriteForm";
	}
	
	@RequestMapping("/noticeWrite.do")//공지사항 글 등록
	public ModelAndView noticeWrite(NoticeDTO dto){
		
		int count=noticeDao.noticeWrite(dto);
		String msg=count>0?"글쓰기성공":"글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("notice/noticeMsg");
		return mav;
		
	}
	
	@RequestMapping("/noticeList.do")//공지사항 리스트 보기
	public ModelAndView noticeList(){
		
		List<NoticeDTO> list=noticeDao.noticeList();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("notice/noticeList");
		return mav;
	}
	
	@RequestMapping("/noticeContent.do")//공지사항 본문 보기
	public ModelAndView noticeContent(@RequestParam("idx") int idx){
		
		int count=noticeDao.noticeNum(idx);//조회수 증가
		NoticeDTO list=noticeDao.noticeContent(idx);//본문내용리스트
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.setViewName("notice/noticeContent");
		return mav;
	}

}
