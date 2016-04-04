package papa.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
public class MemberController {

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
	
	@RequestMapping("/login.do")//login 처리 페이지
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
		
		int result=memberDao.loginOk(id);

		if(result>0){
			int getPw=memberDao.loginOkPw(pwd);
			if(getPw>0){
				msg="로그인 성공!";
				url="index.do";
				String name=memberDao.getUserInfo(id);
				session.setAttribute("sid", id);
				session.setAttribute("sname", name);
			}else{
				msg="비밀번호를 확인해주세요.";
				url="loginForm.do";
			}
		}else{
			msg="아이디를 확인해주세요.";
			url="loginForm.do";
		}

		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("member/memberMsg");
		return mav;
	}

	@RequestMapping("/logout.do")//로그아웃
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/index.do";//바로 인덱스 페이지로 전환됨
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

	public ModelAndView idCheck(@RequestParam(value="id") String id){
		String msg="";
		String result=memberDao.idCheck(id);
		
		if(id==null){
			msg="아이디를 입력해주세요";
		}
		
		if(id.equals(result)){//조건판단
			msg="<font color='red'>중복된 아이디 입니다.</font>";
		}else{
			msg="<font color='blue'>사용 가능한 아이디 입니다.</font>";
		}
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/idCheckOk");
		return mav;
		
	}
	
}
