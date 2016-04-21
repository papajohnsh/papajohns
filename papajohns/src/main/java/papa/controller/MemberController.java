package papa.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jws.WebParam.Mode;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import papa.class_.model.classDAO;
import papa.class_.model.classDTO;
import papa.email.model.Email;
import papa.email.model.EmailSender;
import papa.member.model.MemberDAO;
import papa.member.model.MemberDTO;

@Controller
public class MemberController {
	@Autowired
	private classDAO classDao;
	
	public classDAO getClassDao() {
		return classDao;
	}

	public void setClassDao(classDAO classDao) {
		this.classDao = classDao;
	}

	@Autowired
	private MemberDAO memberDao;
	
	
	public MemberDAO getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}
	
	@Autowired
	   private EmailSender emailSender;
	   @Autowired
	   private Email email;

	    public ModelAndView sendEmailAction (@RequestParam("id") String id) throws Exception {//회원가입 인증 이메일 발송
	        
	    	ModelAndView mav=new ModelAndView();
	    	
	    		MemberDTO dto=memberDao.getUserInfo(id);
	            email.setContent("http://localhost:9090/papajohns/loginConfirm.do?id="+id);	            
	            email.setReceiver(dto.getEmail());
	            email.setSubject(dto.getNickname()+"님 인증 메일입니다.");
	            emailSender.SendEmail(email);
	            
	            return mav;
	    }
	    
	    public ModelAndView idFindEmail(@RequestParam("id") String id)throws Exception{//아이디 이메일 발송
	    	
	    	ModelAndView mav=new ModelAndView();
	    	
	    	MemberDTO dto=memberDao.getUserInfo(id);
	    	
	    	email.setContent(dto.getNickname()+"님의 아이디는"+id+"입니다.");
	    	email.setReceiver(dto.getEmail());
	    	email.setSubject(dto.getNickname()+"님의 아이디를 알려드립니다.");
	    	emailSender.SendEmail(email);
	    	
	    	return mav;
	    }
	    
	    public ModelAndView pwdFindEmail(@RequestParam("id") String id) throws Exception{//비밀번호 이메일 발송
	    	
	    	ModelAndView mav=new ModelAndView();
	    	
	    	MemberDTO dto=memberDao.getUserInfo(id);
	    	
	    	email.setContent(dto.getNickname()+"님의 비밀번호는"+dto.getPwd()+"입니다.");
	    	email.setReceiver(dto.getEmail());
	    	email.setSubject(dto.getNickname()+"님의 비밀번호를 알려드립니다.");
	    	emailSender.SendEmail(email);
	    	
	    	return mav;
	    }
	    
	    @RequestMapping("/loginConfirm.do")//회원가입 승인 처리
	    public ModelAndView loginConfirm(MemberDTO dto){
	      	
	    	memberDao.loginUpdate(dto);//interlock +1일때 회원가입 승인
	    	
	    	String url="index.do";
	    	
	    	ModelAndView mav=new ModelAndView();
	    	mav.addObject("msg", "회원가입 승인완료");
	    	mav.addObject("url", url);
	    	mav.setViewName("member/loginConfirm");
	    	return mav;
	    }
	
	
	@RequestMapping("/loginForm.do")//loginForm으로 이동
	public ModelAndView loginForm(@CookieValue(value="saveid",required=false,defaultValue="NoId")String saveid){
		
		System.out.println("saveid쿠키정보:"+saveid);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/loginForm");
		return mav;
	}
	@RequestMapping("/login_index.do")
	public ModelAndView login_index(HttpSession session){
		ModelAndView mav=new ModelAndView();
		int idx=(int) session.getAttribute("sidx");
		String list1=classDao.reidxList(idx);
		List<classDTO> list5=new ArrayList<>();

		String list2=list1.substring(2);
		System.out.println(list2);
	    String[] list3=list2.split(",");
	    for(int i=0; i<list3.length;i++){
	    	int idx2=Integer.parseInt(list3[i]);
	    	classDTO list4= classDao.joinClass(idx2);
	    	list5.add(list4);
	    	System.out.println(list5);
	    	;
	    	mav.addObject("list4",list5);
	    }
		List<classDTO> list=classDao.classDesign(idx);
		
		mav.addObject("list",list);
		
		mav.setViewName("index");
		return mav;
	}
	@RequestMapping("/login.do")//login 처리 페이지
	public ModelAndView loginOk(@RequestParam(value="id") String id,@RequestParam("pwd") String pwd,
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
		
		String getId=memberDao.loginOk(id);
		System.out.println("getId:"+getId);
		System.out.println("id:"+id);
		
		String result=memberDao.getInterLock(id);
		System.out.println("result"+result);
		
		if(result==null){
			msg="인증메일을 확인해주세요";
			url="loginForm.do";
		}else if(getId==null){
			msg="아이디를 확인해주세요.";
			url="loginForm.do";
		}else if(getId.equals(id)){//아이디가 맞으면
			String getPw=memberDao.loginOkPw(id);
			System.out.println("getPw:"+getPw);
			System.out.println("pwd:"+pwd);
			if(getPw.equals(pwd)){//비밀번호가 맞으면
				msg="로그인 성공!";
				url="index.do";
				MemberDTO dto=memberDao.getUserInfo(id);
				session.setAttribute("sid", id);
				session.setAttribute("sname", dto.getName());
				session.setAttribute("semail", dto.getEmail());
				session.setAttribute("sphone", dto.getPhonenumber());
				session.setAttribute("spwd", dto.getPwd());
				session.setAttribute("sidx", dto.getIdx());
				session.setAttribute("sreidx", dto.getReidx());
				session.setAttribute("snickname", dto.getNickname());
				
				
					int idx=(int) session.getAttribute("sidx");
					String list1=classDao.reidxList(idx);
					List<classDTO> list5=new ArrayList<>();

					String list2=list1.substring(2);
					System.out.println(list2);
				    String[] list3=list2.split(",");
				    for(int i=0; i<list3.length;i++){
				    	int idx2=Integer.parseInt(list3[i]);
				    	classDTO list4= classDao.joinClass(idx2);
				    	list5.add(list4);
				    	System.out.println(list5);
				    	;
				    	mav.addObject("list4",list5);
				    }
					List<classDTO> list=classDao.classDesign(idx);

					


					mav.addObject("list",list);
				
			}else{//비밀번호가 틀리면
				msg="비밀번호를 확인해주세요.";
				url="loginForm.do";
			}
		}else{//아이디가 틀리면
			msg="아이디를 확인해주세요.";
			url="loginForm.do";
		}
		

		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("index");
		return mav;
	}

	@RequestMapping("/logout.do")//로그아웃
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/index.do";//바로 인덱스 페이지로 전환됨
	}
	
	@RequestMapping("/memberAdd.do")//회원가입
	public ModelAndView memberAdd(MemberDTO dto,@RequestParam("id") String id) throws Exception{
		
		String msg="";
		String url="";
		
		String getId=memberDao.idCheck(id);
		
		if(memberDao.idCheck(id)==null){
			int result=memberDao.memberAdd(dto);
			if(result>0){
				msg="메일로 인증메일을 보냈으니 확인해주세요!";
				url="loginForm.do";
				sendEmailAction(id);//해당 아이디로 메일 발송
			}else{
				msg="회원가입에 실패했습니다";
				url="loginForm.do";
			}
			
		}else{
			msg="실패";
			url="loginForm.do";
		}
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("url", url);//index페이지 재활용

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
	
	@RequestMapping("/idFindForm.do")//아이디 찾기 폼
	public String idFindForm(){
		return "member/idFindForm";
	}
	
	@RequestMapping("/idFind.do")//아이디 찾기 로직
	public ModelAndView idFind(@RequestParam("name") String name, @RequestParam("email") String email) throws Exception{
	
		Map<String, String> map=new HashMap<String, String>();
		map.put("name", name);
		map.put("email", email);
		
		int result=memberDao.idFind(map);
		
		ModelAndView mav=new ModelAndView();
		String msg="";
		String url="";
		
		if(result>0){
			
			String getId=memberDao.emailFind(email);
			msg="메일이 발송되었습니다.";
			url="index.do";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			idFindEmail(getId);
		}else{
			msg="가입된 회원이 아닙니다.";
			url="idFindForm.do";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
		}
		mav.setViewName("member/idFindMsg");
		return mav;	
		
	}
	
	@RequestMapping("/pwdFindForm.do")//비밀번호 찾기 폼
	public String pwdFindForm(){
		return "member/pwdFindForm";
	}
	
	@RequestMapping("/pwdFind.do")//비밀번호 찾기 로직
	public ModelAndView pwdFind(@RequestParam("id") String id, @RequestParam("email") String email) throws Exception{
	
		Map<String, String> map=new HashMap<String, String>();
		map.put("id", id);
		map.put("email", email);
		
		int result=memberDao.pwdFind(map);
		
		ModelAndView mav=new ModelAndView();
		String msg="";
		String url="";
		
		if(result>0){
			
			String getPwd=memberDao.emailFind2(email);
			msg="메일을 발송하였습니다.";
			url="index.do";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			pwdFindEmail(id);
		}else{
			msg="가입된 회원이 없습니다.";
			url="idFindForm.do";
			mav.addObject("msg", msg);
			mav.addObject("url", url);
		}
		mav.setViewName("member/idFindMsg");
		return mav;			
	}
	
	@RequestMapping("/myInfoForm.do")//내정보 수정 폼
	public String myInfoForm(MemberDTO dto){
		return "member/myInfoForm";
	}
	
	@RequestMapping("/myInfo.do")//내정보 수정하기
	public ModelAndView myInfo( @RequestParam("upload") MultipartFile upload,@RequestParam("id") String id, HttpServletRequest request,MemberDTO dto,HttpSession session ){
		
		String account=id;
		String path=request.getSession().getServletContext().getRealPath("/resource/data/"+account);
		System.out.println(System.getProperty("user.dir"));
		System.out.println(path);
		System.out.println(account);
		//File temp=new File(request.getSession().getServletContext().getRealPath("/resource/data/"+account));
		//temp.mkdir();
		File dir=new File(path);
		dir.mkdir();
		
		
		if(!dir.exists()){
			copyInto(upload, account, path);
		}else{
			copyInto(upload, account, path);
		}
		
		int count=memberDao.infoMod(dto);
		System.out.println("count:"+count);
		//String msg=count>0?"수정성공!":"수정실패!";
		
		String msg="";
		String url="";
		
			if(count>0){
				msg="수정성공";
				url="myInfoForm.do";
				session.setAttribute("sname", dto.getName());			
				session.setAttribute("spwd", dto.getPwd());
				session.setAttribute("semail", dto.getEmail());
				session.setAttribute("sphone", dto.getPhonenumber());
				session.setAttribute("snickname", dto.getNickname());
				
			}else{
			msg="수정실패";
			url="myInfoForm.do";
		}

		ModelAndView mav=new ModelAndView();
		mav.addObject("url",url);
		mav.addObject("msg", msg);
		mav.setViewName("member/myInfoMsg");
		return mav;
	}
	
	// 업로드
	
	
	private void copyInto(MultipartFile upload, String account, String path) {
		System.out.println("올린파일명" + upload.getOriginalFilename());

		try {
		
			byte bytes[] = upload.getBytes();
			File newFile = new File(path+"/profile.jpg");
			FileOutputStream fos = new FileOutputStream(newFile);
			fos.write(bytes);// copy 행위
			fos.close();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}
	
	
	
	@RequestMapping("/memberOutForm.do")//회원탈퇴 폼
	public String memberOutForm(){
		return "member/memberOutForm";
	}
	
	@RequestMapping("/memberOut.do")//회원탈퇴하기
	public ModelAndView memberOut(MemberDTO dto,@RequestParam("name") String name,
			@RequestParam("pwd") String pwd){
		
		String getPwd=memberDao.outCheckPw(name);
		System.out.println("name="+name);
		
		String msg="";
		String url="";
		
		if(getPwd.equals(pwd)){//비밀번호가 같으면
			
			int count=memberDao.memberOut(dto);
			  System.out.println("count:"+count);

			if(count>0){//회원정보가 있으면
				msg="회원탈퇴성공";
				url="index.do";
			}else{//회원정보가 없으면
				msg="회원탈퇴실패";
				url="memberOutForm.do";
			}
			
		}else{//비밀번호가 다르면
			msg="회원탈퇴실패";
			url="memberOutForm.do";	
		}
			  	 
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("msg", msg);
		  mav.addObject("url", url);
		  mav.setViewName("member/myInfoMsg");
		  return mav;
	}
	@RequestMapping("/facebookLogin.do")
	public ModelAndView facebookLogin(MemberDTO dto, HttpSession session){
		System.out.println(dto.getId());
		System.out.println(dto.getName());

		MemberDTO result=memberDao.facebookLogin(dto);
		
		ModelAndView mav=new ModelAndView();
		String msg="";
		String url="";
		if(result!=null){
			if(result.getNickname()!=null&&result.getNickname()!=""){
				msg="로그인 성공!";
				url="index.do";
				session.setAttribute("sid", result.getId());
				session.setAttribute("sname", result.getName());
				session.setAttribute("snickname", result.getNickname());
				mav.addObject("msg", msg);
				mav.addObject("url", url);
				mav.setViewName("member/memberMsg");
				return mav;
			}else{
				session.setAttribute("sid", dto.getId());
				session.setAttribute("sname", dto.getName());
				mav.setViewName("member/nickname");
				return mav;
			}
		}else{
			int fbJoin=memberDao.fbJoin(dto);
			if(fbJoin>0){
				session.setAttribute("sid", dto.getId());
				session.setAttribute("sname", dto.getName());
				mav.setViewName("member/nickname");
			}
			return mav;
		}
	}
	@RequestMapping("/JLogin.do")
	public ModelAndView JLogin(MemberDTO dto, HttpSession session){
		MemberDTO result=memberDao.facebookLogin(dto);
		ModelAndView mav=new ModelAndView();
		String msg="";
		String url="";
		if(result!=null){
			if(result.getNickname()!=null&&result.getNickname()!=""){
				msg="로그인 성공!";
				url="index.do";
				session.setAttribute("sid", result.getId());
				session.setAttribute("sname", result.getName());
				session.setAttribute("snickname", result.getNickname());
				mav.addObject("msg", msg);
				mav.addObject("url", url);
				mav.setViewName("member/memberMsg");
				return mav;
			}else{
				session.setAttribute("sid", dto.getId());
				session.setAttribute("sname", dto.getName());
				mav.setViewName("member/nickname");
				return mav;
			}
		}else{
			int fbJoin=memberDao.fbJoin(dto);
			if(fbJoin>0){
				session.setAttribute("sid", dto.getId());
				session.setAttribute("sname", dto.getName());
				mav.setViewName("member/nickname");
			}
			return mav;
		}
	}
	@RequestMapping("/nickUpdate.do")
	public ModelAndView nickUpdate(MemberDTO dto){
		String url="index.do";
		ModelAndView mav = new ModelAndView();
		memberDao.nickUpdate(dto);
		mav.addObject("msg", "nickname완료:");
		mav.addObject("url", url);
		mav.setViewName("index");
		System.out.println("/nickUpdate.do완료");
		return mav;
	
	}

				
				
}
