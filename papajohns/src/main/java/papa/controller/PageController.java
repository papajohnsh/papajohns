package papa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.member.model.MemberDAO;
import papa.member.model.MemberDTO;

@Controller
public class PageController {
	@Autowired
	private MemberDAO memberDao;
	
	
	public MemberDAO getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	@RequestMapping("/loginForm.do")//loginForm으로 이동
	public String loginForm(){
		return "member/loginForm";
	}
	
	@RequestMapping("/loginOk.do")//login 처리 페이지
	public ModelAndView loginOk(@RequestParam("id") String id,@RequestParam("pwd") String pwd){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/login");
		return mav;
	}
	
	@RequestMapping("/memberAddOk.do")//회원가입
	public ModelAndView memberAddOk(MemberDTO dto){
		System.out.println(dto.getName()+""+dto.getId()+""+dto.getPwd());
		int result=memberDao.memberAdd(dto);
		String msg=result>0?"회원가입성공":"회원가입실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/memberMsg");
		return mav;
	}
	
	
	@RequestMapping("/classRoomForm.do")//내강의실Form 이동
	public String classRoomForm(){
		return "class/classRoomForm";
	}
	
	@RequestMapping("/makeClass.do")
	public String makeClass(){
		return "class/makeClass";
	}
	
	@RequestMapping("/classForm.do")
	public ModelAndView classForm(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("class/classForm");
		return mav;
	}
	
	@RequestMapping("/makeClassRoom.do")
	public String makeClassRoom(){
		return "class/makeClassRoom";
	}
	
	@RequestMapping("/bbsListForm.do")//게시판Form 이동,list 보여주기
	public ModelAndView bbsListForm(){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("bbs/bbsListForm");
		return mav;
	}
	
	@RequestMapping("/bbsWriteAdd.do")//게시판 글쓰기 폼
	public String bbsWriteAdd(){
		return "bbs/bbsWriteAdd";
	}
	
	@RequestMapping("/bbsContent.do")//게시판 본문내용보기
	public ModelAndView bbsContent(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("bbs/bbsContent");
		return mav;
	}
	
	@RequestMapping("/supportForm.do")//고객지원Form 이동
	public ModelAndView supportForm(){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("support/supportForm");
		return mav;
	}
	@RequestMapping("/memberAddForm.do")
	public String memberAddForm(){
		return "member/memberAddForm";
	}
	
	@RequestMapping("/findListForm.do")//검색 Form 이동
	public ModelAndView findListForm(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("find/findListForm");
		return mav;
	}
	
	@RequestMapping("/myInfo.do")//내정보 Form 이동
	public String myInfo(){
		return "myinfo/myInfo";
	}
	
}
