package papa.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.deser.std.DateDeserializers.CalendarDeserializer;

import papa.member.model.MemberDTO;
import papa.quiz.model.quizDAO;
import papa.quiz.model.quizDTO;
import papa.quizAnswer.model.quizAnswerDTO;
import papa.quiztest.model.*;
import papa.quizAnswer.model.*;
@Controller
public class quizController {
@Autowired
	private quizDAO quizDao;
public quizDAO getQuizDao() {
	return quizDao;
}

public void setQuizDao(quizDAO quizDao) {
	this.quizDao = quizDao;
}
@Autowired
private quizTestDAO quizTestDao;


public quizTestDAO getQuizTestDao() {
	return quizTestDao;
}

public void setQuizTestDao(quizTestDAO quizTestDao) {
	this.quizTestDao = quizTestDao;
}
@Autowired
private quizAnswerDAO quizAnswerDao;


public quizAnswerDAO getQuizAnswerDao() {
	return quizAnswerDao;
}

public void setQuizAnswerDao(quizAnswerDAO quizAnswerDao) {
	this.quizAnswerDao = quizAnswerDao;
}

@RequestMapping("/quizTestForm.do")
public String classQuiz(){
	return "quiz/quizTestForm";
}

@RequestMapping("/quizTestSave1.do")//퀴즈
public ModelAndView quizAdd(quizDTO dto){
	System.out.println("퀴즈저장 진입");
	int result=quizDao.quizAdd(dto);
	String msg=result>0?"성공":"실패";

	ModelAndView mav=new ModelAndView();
	mav.addObject("msg", msg);
	mav.addObject("url", "classShow.do");
	mav.setViewName("quiz/quizMsg");
	return mav;
}

@RequestMapping("/quizTestSave2.do")
public ModelAndView quizUpdate(quizDTO dto){
	System.out.println("퀴즈 업데이트 진입");
	int result=quizDao.quizUpdate(dto);
	String msg=result>0?"수정완료":"수정실패";
	
	ModelAndView mav=new ModelAndView();
	mav.addObject("msg", msg);
	mav.setViewName("quiz/quizUpdateMsg");
	return mav;
}


@RequestMapping("/quizList.do")
public ModelAndView QuizList(@RequestParam(value="idx") int idx){
	
	List<quizDTO> result= quizDao.quizList();
		
	ModelAndView mav=new ModelAndView();
	mav.addObject("class_idx",idx);
	mav.addObject("result",result);
	mav.setViewName("quiz/quizList");
	return mav;
}
@RequestMapping("/quizTestSave.do")
public ModelAndView QuizTestSave(quizTestDTO dto){
	System.out.println("클래스반번호"+dto.getClass_idx());
	dto.setQuiz_num(dto.getQuiz_num().substring(4));
	System.out.println(dto.getQuiz_num());
	int result=quizTestDao.quizTestSave(dto);
	System.out.println("시험등록 리절트 수:"+result);
	System.out.println(dto.getStart_date());
	System.out.println(dto.getStart_time());
	String msg=result>0?"시험등록완료":"실패";
	
	ModelAndView mav=new ModelAndView();
	mav.addObject("msg", msg);
	mav.addObject("url","classShow.do?idx="+dto.getClass_idx());
	mav.setViewName("quiz/quizMsg");
	return mav;
	
}

@RequestMapping("/quizTest.do")
public ModelAndView QuizTest(){
	List<quizTestDTO> result=quizTestDao.quizTestList();
	ModelAndView mav=new ModelAndView();
	mav.addObject("result",result);
	mav.setViewName("quiz/quizTest");
	return mav;
}
@RequestMapping("/quizTest2.do")
public String Quiztest2(quizTestDTO dto){

	
	
	int result=quizTestDao.quizTestUpdate(dto);
	

	
	
	return "class/classShow";
}
@RequestMapping("/quizTestLoad.do")
public ModelAndView QuizTestLoad(){
	int class_idx=1;
	List<quizTestDTO> result=quizTestDao.quizList2(class_idx);
	System.out.println(result.get(0).getStart_date());
	System.out.println(result.get(0).getStart_time());
	
	ModelAndView mav=new ModelAndView();
	mav.addObject("result",result);
	mav.setViewName("quiz/quizLoad");
	return mav;
	
}
@RequestMapping("/quizTestAnswer.do")
public ModelAndView quizTestAnswer(quizAnswerDTO dto){
	
	System.out.println(dto.getPaper_idx());
	System.out.println(dto.getQuiz_answer());
	
	dto.setQuiz_answer(dto.getQuiz_answer().substring(4));
	quizTestDTO result=quizTestDao.quizTestList2(dto.getPaper_idx());
	String[] answer=result.getAnswer().split("::");
	String[] user=dto.getQuiz_answer().split("::");
	String ox=null;
	int quiz_num=0;
	for(int i=0;i<answer.length;i++){
		if(answer[i].equals(user[i])){
			quiz_num=quiz_num+1;
			ox=ox+"O";
		}else{
			ox=ox+"X";
		}
	}
	ox=ox.substring(4);
	System.out.println("맞은개수:"+quiz_num);
	System.out.println("맞은현황:"+ox);
	quizAnswerDTO dto2=new quizAnswerDTO(0, dto.getSubject(),dto.getMember_id(), dto.getClass_idx(), dto.getPaper_idx(), ox, quiz_num, null, dto.getQuiz_answer());
	int update_result=quizAnswerDao.quizAnswer(dto2);
	String msg=update_result>0?"시험완료":"실패";

	ModelAndView mav=new ModelAndView();
	mav.addObject("msg", msg);
	mav.addObject("url","classShow.do?idx="+dto.getClass_idx());
	mav.setViewName("quiz/quizMsg");
	return mav;
}

//쪽지시험 보기
@RequestMapping("/quizTestList.do")
public ModelAndView QuizTestList(@RequestParam(value="idx") int idx, @RequestParam(value="id") String id) throws ParseException{
	
	quizTestDTO result=quizTestDao.quizTestList2(idx);
	
	int nYear;
    int nMonth;
    int nDay;
    int nHour;
    int nMinute;
     
    // 현재 날짜 구하기 
    Calendar calendar = new GregorianCalendar(Locale.KOREA);
    
    nYear = calendar.get(Calendar.YEAR);
    nMonth = calendar.get(Calendar.MONTH) + 1;
    nDay = calendar.get(Calendar.DAY_OF_MONTH);
    nHour = calendar.get(Calendar.HOUR_OF_DAY);
    nMinute = calendar.get(Calendar.MINUTE);
    System.out.println("시험시간:"+result.getStart_date());
    String start=nYear+"-"+nMonth+"-"+nDay+" "+nHour+":"+nMinute;
    System.out.println(start);
    
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    Date beginDate = formatter.parse(start);
    Date endDate = formatter.parse(result.getStart_date()+" "+result.getStart_time());
    String quizJoin = quizAnswerDao.quizJoin(idx, id);
    System.out.println("시험지목록에 있는지 확인!!"+quizJoin);
    System.out.println(beginDate+"///"+endDate);
	if(beginDate.getTime()<endDate.getTime()){
		System.out.println(beginDate.getTime());
		System.out.println(endDate.getTime());
		ModelAndView mav=new ModelAndView();
		String msg="아직 시험시간이 이릅니다.";
		mav.addObject("msg",msg);
		mav.setViewName("quiz/quizUpdateMsg");
		return mav;
	}else if(beginDate.getTime()>endDate.getTime()+((long)1000*60*60)){
		ModelAndView mav=new ModelAndView();
		String msg="이미 시험이 종료되었습니다.";
		mav.addObject("msg",msg);
		mav.setViewName("quiz/quizUpdateMsg");
		return mav;
	}else if(quizJoin != null){
		ModelAndView mav=new ModelAndView();
		String msg="이미 참여하였습니다.";
		mav.addObject("msg",msg);
		mav.setViewName("quiz/quizUpdateMsg");
		return mav;
		
	}else{
	long limit=(endDate.getTime()+((long)1000*60*60)-beginDate.getTime())/((long)1000);
	System.out.println("남은 시간:"+ limit);
	List<quizTestDTO> result2=new ArrayList<>();
	String ques=result.getQuestion();
	String[] question=ques.split("::");
	String[] example1=result.getExample1().split("::");
	String[] example2=result.getExample2().split("::");
	String[] example3=result.getExample3().split("::");
	String[] example4=result.getExample4().split("::");
	System.out.println("한번만실행");
	for(int i=0; i<question.length;i++ ){
	    	System.out.println("반복실행");
	    	//select quiz
		quizTestDTO dto2= new quizTestDTO(i+1, "", 0, null,null, "", "", "", question[i],"", example1[i], example2[i], example3[i], example4[i]);
	    	result2.add(dto2);			
		
	}
	System.out.println("마지막실행");
	ModelAndView mav=new ModelAndView();
	mav.addObject("result",result);
	mav.addObject("result2",result2);
	mav.addObject("limitTime", limit);
	mav.setViewName("quiz/quizLoadView");
	return mav;
	}
}
//쪽지시험 결과보기
/*@RequestMapping("/quizResult.do")
public ModelAndView quizResult(@RequestParam(value="idx") int idx){
	
	List<quizTestDTO> num= quizTestDao.quizNum(idx);
	num.size();
	String[] result=new String[num.size()];
	
	for(int i;i<num.size();i++){
		result[i]=dao.getQ[num.get(i).getIdx()];
	}
	
	for(int i;i<num.size();i++){
		for(int j;j<result[i].length();j++){
			 result[i].getinx();
		}
	}
	
//	List<quizAnswerDTO> list= quizAnswerDao.quizResult(idx);
//	for(int i=0; i<num.size();i++){
//		for(int j=0; j<list.size();j++){
//			if(num.get(i).getIdx()==list.get(j).getClass_idx()){
//				
//			}
//		}
//	}
	ModelAndView mav=new ModelAndView();
	mav.addObject("list", list);
	mav.setViewName("quiz/quizResult");
	return mav;
}*/

}




