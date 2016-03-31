package papa.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.MARSHAL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public ModelAndView loginOk(@RequestParam("id") String id,@RequestParam("pwd") String pwd,
			HttpSession session){
		
		String msg="";
		String url="";
		
		ModelAndView mav=new ModelAndView();
		
		Map<String, String> map=new HashMap<String, String>();
		map.put("id", id);
		System.out.println("1");
		System.out.println(id);
		map.put("pwd", pwd);
		System.out.println("2");
		System.out.println(pwd);
		
		
		int result=memberDao.loginOk(map);
		System.out.println(result);
		System.out.println("3");
		System.out.println(result);System.out.println("4");
		
		if(result==memberDao.NOT_ID){//아이디오류
			
			msg="등록되어있는 아이디가 아닙니다.";
			url="loginForm.do";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("member/memberMsg");
		
		}else if(result==memberDao.NOT_PWD){//비밀번호 오류
			System.out.println("5");
			msg="잘못된 비밀번호입니다.";
			url="loginForm.do";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("member/memberMsg");
		
		}else if(result==memberDao.LOGIN_OK){//로그인 성공
			String name=memberDao.getUserInfo(id);
			mav.addObject("name", name);//이름정보
			mav.setViewName("member/loginOk");
			session.setAttribute("sid", id);
			session.setAttribute("sname", name);
			
		}
		
		return mav;
	}
	
	@RequestMapping("/memberAdd.do")//회원가입
	public ModelAndView memberAdd(MemberDTO dto){
		int result=memberDao.memberAdd(dto);
		String msg=result>0?"회원가입성공":"회원가입실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("url", "index.do");//index페이지 재활용
		mav.setViewName("member/memberMsg");
		return mav;
	}
	

	@RequestMapping("/idCheckOk.do")//아이디 중복체크 판별
	public ModelAndView idCheck(@RequestParam(value="userid",required=false) String userid){
		boolean result=memberDao.idCheck(userid);//조건판단
		ModelAndView mav=new ModelAndView();
		String msg=result?"이미등록되어있는 아이디입니다.":"사용가능한 아이디입니다.";
		mav.addObject("msg", msg);
		mav.setViewName("member/idCheckOk");
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
