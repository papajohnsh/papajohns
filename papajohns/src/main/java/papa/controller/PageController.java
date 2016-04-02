package papa.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.MARSHAL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
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
	public ModelAndView loginForm(@CookieValue(value="saveid",required=false,defaultValue="NoId")String saveid){
		
		System.out.println("saveid쿠키정보:"+saveid);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/loginForm");
		return mav;
	}
	
	@RequestMapping("/loginOk.do")//login 처리 페이지
	public ModelAndView loginOk(@RequestParam("id") String id,@RequestParam("pwd") String pwd,
			HttpSession session,HttpServletResponse resp,@RequestParam(value="saveid",defaultValue="")String saveid){
		
		//saveid
		if(saveid==null||saveid.equals("")){
			Cookie ck=new Cookie("saveid", id);
			ck.setMaxAge(0);
			resp.addCookie(ck);
		}else{
			Cookie ck=new Cookie("saveid", id);
			ck.setMaxAge(60*60*24*30);
			resp.addCookie(ck);
		}
		
		//login 판별
		String msg="";
		String url="";
		
		ModelAndView mav=new ModelAndView();
	
		Map map=new HashMap();
		map.put("id", id);
		map.put("pwd", pwd);

		String result=memberDao.loginOk(map);

		
		System.out.println("id="+id+"pwd="+pwd);
		System.out.println("result="+result);

		if(!result.equals(id)){

			msg="등록되어있는 아이디가 아닙니다.";
			url="loginForm.do";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("member/memberMsg");
		
		}else if(!result.equals(pwd)){
			System.out.println("2");
			msg="잘못된 비밀번호입니다.";
			url="loginForm.do";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("member/memberMsg");

			
		}else if(result.equals(id)&&result.equals(pwd)){
			
			String name=memberDao.getUserInfo(id);
			System.out.println("name="+name);
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
	

	@RequestMapping(value="/idCheckOk.do",method=RequestMethod.POST)//아이디 중복체크 판별
	public ModelAndView idCheck(@RequestParam(value="userid") String userid){
		String msg="";
		String result=memberDao.idCheck(userid);//조건판단
		
		if(userid.equals(result)){
			msg="중복된 아이디 입니다.";
		}else{
			msg="사용 가능한 아이디 입니다.";
		}
		
		ModelAndView mav=new ModelAndView();
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
