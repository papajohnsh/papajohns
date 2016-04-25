package papa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.freebbs.model.FreeBbsDTO;
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
	public ModelAndView qnaList(HttpServletRequest req){
		
		int totalCnt=qnaDao.getTotalCnt();//총게시물 수 가져오기
		//System.out.println("1: "+totalCnt);  
		totalCnt=totalCnt==0?1:totalCnt;      //전체 게시물 수
		//System.out.println("2: "+totalCnt);
	      int listSize=5;                     //페이지에 출력할 게시물 수
	      int pageSize=5;                     //페이지 출력 수
	   
	      String cp_s=req.getParameter("cp");
	      if(cp_s==null||cp_s.equals("")){
	         cp_s="1";
	      }
	      int cp=Integer.parseInt(cp_s);
	      
	      String pageStr=papa.page.PageMaker.goPage("qnaList.do", totalCnt, listSize, pageSize, cp);
	      
	      int startNum=(cp-1)*listSize;
		  int endNum=cp*listSize;
		     
	     Map map=new HashMap();
	     map.put("startNum", startNum);
	     map.put("endNum", endNum);   
		
		List<QnaDTO> list=qnaDao.qnaList(map);		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("qna/qnaList");
		return mav;
		
	}
	
	@RequestMapping("/qnaWriteForm.do")//qna 글쓰기 폼
	public String qnaWriteForm(){
		return "qna/qnaWriteForm";
	}
	
	@RequestMapping(value="/qnaWrite.do",method=RequestMethod.POST)//qna 글쓰기 등록
	public ModelAndView qnaWrite(QnaDTO dto){
		
		int count=qnaDao.qnaWrite(dto);
		String msg=count>0?"글쓰기성공":"글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("qna/qnaMsg");
		return mav;
	}
	
	@RequestMapping("/qnaContent.do")//본문내용보기
	public ModelAndView qnaContent(@RequestParam(value="idx",required=false) int idx,@RequestParam("nickname") String nickname){
		
		int count=qnaDao.qnaNum(idx);//조회수 증가

		QnaDTO list=qnaDao.qnaContent(idx);//본문내용리스트
		List<QnaReDTO> reList=qnaDao.qnaReList(idx);//댓글리스트
		String msg="";
		String url="";
		
		if(!list.getWriter().equals(nickname)){
			
			ModelAndView mav=new ModelAndView();
			msg="잠금";
			url="qna/qnaList";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("qna/qnaMsg");
			return mav;
			
		}else{
			
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("reList", reList);
			mav.addObject("count", count);
			mav.setViewName("qna/qnaContent");
			return mav;
			
			/*ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("reList", reList);
			mav.addObject("count", count);
			mav.setViewName("qna/qnaContent");
			return mav;*/
		}
		
	}

	@RequestMapping("/qnaReWriteForm.do")//댓글쓰기 폼
	public ModelAndView qnaReWriteForm(@RequestParam(value="idx",required=false) int re_idx){
		
		int result=qnaDao.getIdx(re_idx);//본문 idx 가져오기

		ModelAndView mav=new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName("qna/qnaReWriteForm");
		return mav;
	}
	
	@RequestMapping(value="/qnaReWrite.do",method=RequestMethod.POST)//댓글 등록
	public ModelAndView qnaReWrite(QnaReDTO dto){
		
		int count=qnaDao.qnaReWrite(dto);
		String msg=count>0?"댓글쓰기성공":"댓글쓰기실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("qna/qnaMsg");
		return mav;		
	}
	
	@RequestMapping("/qnaFind.do")
	public ModelAndView qnaFind(@RequestParam("fkey") String fkey, @RequestParam("fvalue") String fvalue){
		
		Map<String, String> map=new HashMap();
		map.put("fkey", fkey);
		map.put("fvalue", fvalue);
		
		System.out.println(fkey+"/"+fvalue);
		
		List<QnaDTO> list=qnaDao.qnaFind(map);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("qna/qnaFind");
		return mav;
	} 
	
}
