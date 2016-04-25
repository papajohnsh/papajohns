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

import papa.classbbs.model.ClassBbsDAO;
import papa.classbbs.model.ClassBbsDTO;
import papa.classbbs.model.ClassBbsReDTO;


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
	public ModelAndView classBbsList(HttpServletRequest req){
		
		int totalCnt=classbbsDao.classTotal();//총게시물 수 가져오기
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
	      
	      String pageStr=papa.page.PageMaker.goPage("classBbsList.do", totalCnt, listSize, pageSize, cp);
	      	      
	      int startNum=(cp-1)*listSize;
	     int endNum=cp*listSize;
	      
	      Map map=new HashMap();
	      map.put("startNum", startNum);
	      map.put("endNum", endNum);
		
		List<ClassBbsDTO> list=classbbsDao.classList(map);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("classBbs/classBbsList");
		return mav;
	}
	
	@RequestMapping("/classBbsWriteForm.do")//글쓰기 폼
	public String classBbsWriteForm(){
		return "classBbs/classBbsWriteForm";
	}
	
	@RequestMapping(value="/classBbsWrite.do",method=RequestMethod.POST)//글쓰기 등록
	public ModelAndView classBbsWrite(ClassBbsDTO dto){
		
		int count=classbbsDao.writeAdd(dto);
		String msg=count>0?"글쓰기 성공!":"글쓰기 실패!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("classBbs/classBbsMsg");
		return mav;
	}
	
	@RequestMapping("/classBbsContent.do")//수업 본문내용 보기
	public ModelAndView classContent(@RequestParam("idx") int idx){
		
		int count=classbbsDao.classNum(idx);//조회수
		
		ClassBbsDTO list=classbbsDao.classContent(idx);//본문내용리스트
		List<ClassBbsReDTO> reList=classbbsDao.classBbsReList(idx);//댓글 리스트
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("reList", reList);
		mav.addObject("count", count);
		mav.setViewName("classBbs/classBbsContent");
		return mav;
	}
	
	@RequestMapping("/classBbsReWriteForm.do")//수업 댓글 쓰기 폼
	public ModelAndView classBbsReWriteForm(@RequestParam(value="idx",required=false) int re_idx){
		
		int result=classbbsDao.getIdx(re_idx);
		
		System.out.println(re_idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName("classBbs/classBbsReWriteForm");
		return mav;
		
	}
	
	@RequestMapping(value="/classBbsReWrite.do",method=RequestMethod.POST)//수업 게시판 댓글 등록
	public ModelAndView classBbsReWrite(ClassBbsReDTO dto){
		
		int count=classbbsDao.classReWrite(dto);
		String msg=count>0?"댓글쓰기성공!":"댓글쓰기실패!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("classBbs/classBbsMsg");
		return mav;
	}
	
	@RequestMapping("/classFind.do")//게시판 검색
	public ModelAndView freeBbsFind(@RequestParam("fkey") String fkey, @RequestParam("fvalue") String fvalue){
		
		Map<String, String> map=new HashMap();
		map.put("fkey", fkey);
		map.put("fvalue", fvalue);
		
		System.out.println(fkey+"/"+fvalue);
		
		List<ClassBbsDTO> list=classbbsDao.classBbsFind(map);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("classBbs/classFind");
		return mav;
	}
}
