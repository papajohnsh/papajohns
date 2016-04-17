package papa.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import papa.member.model.MemberDTO;
import papa.quiz.model.quizDAO;
import papa.quiz.model.quizDTO;
import papa.quizAnswer.model.quizAnswerDTO;
import papa.quiztest.model.*;
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
public ModelAndView QuizList(){
	
	List<quizDTO> result= quizDao.quizList();
		
	ModelAndView mav=new ModelAndView();
	mav.addObject("result",result);
	mav.setViewName("quiz/quizList");
	return mav;
}
@RequestMapping("/quizTestSave.do")
public ModelAndView QuizTestSave(quizTestDTO dto){
	dto.setQuiz_num(dto.getQuiz_num().substring(4));
	System.out.println(dto.getQuiz_num());
	int result=quizTestDao.quizTestSave(dto);
	System.out.println("시험등록 리절트 수:"+result);
	String msg=result>0?"시험등록완료":"실패";
	
	ModelAndView mav=new ModelAndView();
	mav.addObject("msg", msg);
	mav.addObject("url","classShow.do");
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
	List<quizTestDTO> result2=new ArrayList<>();
	String ques=result.get(0).getQuestion();
	int num=0;
	String[] question=ques.split("::");
	String[] example1=result.get(0).getExample1().split("::");
	String[] example2=result.get(0).getExample2().split("::");
	String[] example3=result.get(0).getExample3().split("::");
	String[] example4=result.get(0).getExample4().split("::");
	System.out.println("한번만실행");
	for(int i=0; i<question.length;i++ ){
	    	System.out.println("반복실행");
	    	//select quiz
		quizTestDTO dto= new quizTestDTO(i+1, "", 0, "", "", "", question[i], 0, example1[i], example2[i], example3[i], example4[i]);
	    	result2.add(dto);			
		
	}
	System.out.println("마지막실행");
	ModelAndView mav=new ModelAndView();
	mav.addObject("result",result);
	mav.addObject("result2", result2);
	mav.setViewName("quiz/quizLoad");
	return mav;
	
}
@RequestMapping("/quizTestAnswer")
public ModelAndView quizTestAnswer(quizAnswerDTO dto){
	
	
	dto.setQuiz_answer(dto.getQuiz_answer().substring(4));
	
	System.out.println(dto.getPaper_idx());
	System.out.println(dto.getQuiz_answer());
	
	ModelAndView mav=new ModelAndView();
	mav.setViewName("class/classShow");
	return mav;
}

}




