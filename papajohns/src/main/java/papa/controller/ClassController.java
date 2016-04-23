package papa.controller;


import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.class_.model.classDAO;
import papa.class_.model.classDTO;
import papa.design.model.designDAO;
import papa.design.model.designDTO;
import papa.member.model.MemberDTO;
@Controller
public class ClassController {
	
	@Autowired
	private classDAO classDao;
	
	@Autowired 
	private designDAO designDao;
	
	
	public designDAO getDesignDao() {
		return designDao;
	}


	public void setDesignDao(designDAO designDao) {
		this.designDao = designDao;
	}


	public classDAO getClassDao() {
		return classDao;
	}


	public void setClassDao(classDAO classDao) {
		this.classDao = classDao;
	}


	@RequestMapping("/makeClassAdd.do")
	public ModelAndView makeClass(HttpSession session, classDTO dto){
		System.out.println("컨롤러진입");
		designDTO design_dto=new designDTO();
		String id=(String)session.getAttribute("sid");
		dto.setId(id);
		int result=classDao.makeClassAdd(dto);
		int reidx=dto.getIdx();
		design_dto.setSend(",-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,");
		design_dto.setReidx(reidx);
		int a = classDao.classDesignAdd(design_dto);
		System.out.println(result);
		System.out.println(reidx);
		
		ModelAndView mav=new ModelAndView();
		String msg=result>0?"수업생성성공":"실패";
		mav.addObject("msg",msg);
		mav.setViewName("class/Msg");
		return mav;
	}
	@RequestMapping("/classRoomNameSearchForm.do")
	public ModelAndView classRoomNameSearchForm(@RequestParam("num")String num){
		ModelAndView mav=new ModelAndView();
		mav.addObject("num",num);
		mav.setViewName("find/findListForm");
		return mav;
		
	}
	@RequestMapping("/classRoomNameSearch.do")
	public ModelAndView classRoomNameSearch(@RequestParam(value="subject",required=false)String subject,@RequestParam("num")String num,
			@RequestParam(value="institut",required=false)String institut,@RequestParam(value="name",required=false)String name,
			@RequestParam(value="class_date",required=false)String class_date,@RequestParam(value="class_time",required=false)String class_time){
		
		List<String> list=classDao.classRoomNameSearch(subject);
		List<String> list2=classDao.institutSearch(institut);
		List<String> list3=classDao.nameSearch(name);
		List<String> list4=classDao.class_dateSearch(class_date);
		List<String> list5=classDao.class_timeSearch(class_time);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("list2",list2);
		mav.addObject("list3",list3);
		mav.addObject("list4",list4);
		mav.addObject("list5",list5);
		mav.addObject("num",num);
		mav.setViewName("find/findListForm");
		return mav;
		
	}
	@RequestMapping("/popup.do")
	public ModelAndView classJoin(@RequestParam(value="idx",required=false)String idx){
		
		
		List<classDTO> list=classDao.classJoin(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("class/classJoin");
		return mav;
	}
	@RequestMapping("/classView.do")
	public ModelAndView classview(@RequestParam(value="idx",required=false)String idx){
		
		List<classDTO> list=classDao.classJoin(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("class/classView");
		return mav;
	}
	
	@RequestMapping("/classAttend.do")
	public ModelAndView classAttend(HttpSession session,int reidx){
		
		int idx=(int) session.getAttribute("sidx");
		String list=classDao.reidxList(idx);
		
		if(list==null){
			list="0";
		}
		list=list+","+reidx;
		
		int result=classDao.classAddUpdate(list, idx);
		
		System.out.println(idx);
		System.out.println(result);
		String msg=result>0?"참가성공":"참가 실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("class/addMsg");
		return mav;
		
	
	}
	@RequestMapping("/classDesign.do")
	public ModelAndView classDesign(@RequestParam(value="idx",required=false)int idx){
		
		List<classDTO> list=classDao.classDesign(idx);
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("list",list);
		mav.setViewName("class/classDesign");
		return mav;
	}
	
	@RequestMapping("/designJoin.do")
	public ModelAndView designJoin(int idx){
		String send=designDao.send(idx);
		String a=send;
		String b="";
		  
		  String result1[]=new String[300];
		  int count=0; 
		  for(int i=0;i<a.length();i++){ 
		    
		    
		     
		        while(a.charAt(i)!=','){ 
		        	b+=a.charAt(i);
		        	
		        	if(i==a.length())break;
		        	i++;
		        }
		        
		        result1[count]=b;
		        count++;
		        b="";
		     }
		  
		 
		
		   for(int i=0;i<=90;i++){
			   System.out.println("result"+i+": "+result1[i] );
			   
		   }
		   
		   
		   String a1= result1[1];
		   String a2= result1[2];
		   String a3= result1[3];
		   String a4= result1[4];
		   String a5= result1[5];
		   String a6= result1[6];
		   String a7= result1[7];
		   String a8= result1[8];
		   String a9= result1[9];
		   String a10=result1[10];
		   String a11=result1[11];
		   String a12=result1[12];
		   String a13= result1[13];
		   String a14= result1[14];
		   String a15= result1[15];
		   String a16= result1[16];
		   String a17= result1[17];
		   String a18= result1[18];
		   String a19= result1[19];
		   String a20= result1[20];
		   String a21= result1[21];
		   String a22= result1[22];
		   String a23= result1[23];
		   String a24= result1[24];
		   String a25= result1[25];
		   String a26= result1[26];
		   String a27= result1[27];
		   String a28= result1[28];
		   String a29= result1[29];
		   String a30= result1[30];
		   
		   String x1= result1[31];
		   String x2= result1[32];
		   String x3= result1[33];
		   String x4= result1[34];
		   String x5= result1[35];
		   String x6= result1[36];
		   String x7= result1[37];
		   String x8= result1[38];
		   String x9= result1[39];
		   String x10= result1[40];
		   String x11= result1[41];
		   String x12= result1[42];
		   String x13= result1[43];
		   String x14= result1[44];
		   String x15= result1[45];
		   String x16= result1[46];
		   String x17= result1[47];
		   String x18= result1[48];
		   String x19= result1[49];
		   String x20= result1[50];
		   String x21= result1[51];
		   String x22= result1[52];
		   String x23= result1[53];
		   String x24= result1[54];
		   String x25= result1[55];
		   String x26= result1[56];
		   String x27= result1[57];
		   String x28= result1[58];
		   String x29= result1[59];
		   String x30= result1[60];
		   
		   String y1= result1[61];
		   String y2= result1[62];
		   String y3= result1[63];
		   String y4= result1[64];
		   String y5= result1[65];
		   String y6= result1[66];
		   String y7= result1[67];
		   String y8= result1[68];
		   String y9= result1[69];
		   String y10= result1[70];
		   String y11= result1[71];
		   String y12= result1[72];
		   String y13= result1[73];
		   String y14= result1[74];
		   String y15= result1[75];
		   String y16= result1[76];
		   String y17= result1[77];
		   String y18= result1[78];
		   String y19= result1[79];
		   String y20= result1[80];
		   String y21= result1[81];
		   String y22= result1[82];
		   String y23= result1[83];
		   String y24= result1[84];
		   String y25= result1[85];
		   String y26= result1[86];
		   String y27= result1[87];
		   String y28= result1[88];
		   String y29= result1[89];
		   String y30= result1[90];
		   
		   ModelAndView mav=new ModelAndView();
		   mav.addObject("a1",a1);
		   mav.addObject("a2",a2);
		   mav.addObject("a3",a3);
		   mav.addObject("a4",a4);
		   mav.addObject("a5",a5);
		   mav.addObject("a5",a5);
		   mav.addObject("a6",a6);
		   mav.addObject("a7",a7);
		   mav.addObject("a8",a8);
		   mav.addObject("a9",a9);
		   mav.addObject("a10",a10);
		   mav.addObject("a11",a11);
		   mav.addObject("a12",a12);
		   mav.addObject("a13",a13);
		   mav.addObject("a14",a14);
		   mav.addObject("a15",a15);
		   mav.addObject("a16",a16);
		   mav.addObject("a17",a17);
		   mav.addObject("a18",a18);
		   mav.addObject("a19",a19);
		   mav.addObject("a20",a20);
		   mav.addObject("a21",a21);
		   mav.addObject("a22",a22);
		   mav.addObject("a23",a23);
		   mav.addObject("a24",a24);
		   mav.addObject("a25",a25);
		   mav.addObject("a26",a26);
		   mav.addObject("a27",a27);
		   mav.addObject("a28",a28);
		   mav.addObject("a29",a29);
		   mav.addObject("a30",a30);
		   
		   
		   mav.addObject("x1",x1);
		   mav.addObject("x2",x2);
		   mav.addObject("x3",x3);
		   mav.addObject("x4",x4);
		   mav.addObject("x5",x5);
		   mav.addObject("x6",x6);
		   mav.addObject("x7",x7);
		   mav.addObject("x8",x8);
		   mav.addObject("x9",x9);
		   mav.addObject("x10",x10);
		   mav.addObject("x11",x11);
		   mav.addObject("x12",x12);
		   mav.addObject("x13",x13);
		   mav.addObject("x14",x14);
		   mav.addObject("x15",x15);
		   mav.addObject("x16",x16);
		   mav.addObject("x17",x17);
		   mav.addObject("x18",x18);
		   mav.addObject("x19",x19);
		   mav.addObject("x20",x20);
		   mav.addObject("x21",x21);
		   mav.addObject("x22",x22);
		   mav.addObject("x23",x23);
		   mav.addObject("x24",x24);
		   mav.addObject("x25",x25);
		   mav.addObject("x26",x26);
		   mav.addObject("x27",x27);
		   mav.addObject("x28",x28);
		   mav.addObject("x29",x29);
		   mav.addObject("x30",x30);
		   
		   mav.addObject("y1",y1);
		   mav.addObject("y2",y2);
		   mav.addObject("y3",y3);
		   mav.addObject("y4",y4);
		   mav.addObject("y5",y5);
		   mav.addObject("y6",y6);
		   mav.addObject("y7",y7);
		   mav.addObject("y8",y8);
		   mav.addObject("y9",y9);
		   mav.addObject("y10",y10);
		   mav.addObject("y11",y11);
		   mav.addObject("y12",y12);
		   mav.addObject("y13",y13);
		   mav.addObject("y14",y14);
		   mav.addObject("y15",y15);
		   mav.addObject("y16",y16);
		   mav.addObject("y17",y17);
		   mav.addObject("y18",y18);
		   mav.addObject("y19",y19);
		   mav.addObject("y20",y20);
		   mav.addObject("y21",y21);
		   mav.addObject("y22",y22);
		   mav.addObject("y23",y23);
		   mav.addObject("y24",y24);
		   mav.addObject("y25",y25);
		   mav.addObject("y26",y26);
		   mav.addObject("y27",y27);
		   mav.addObject("y28",y28);
		   mav.addObject("y29",y29);
		   mav.addObject("y30",y30);
		   
		   String list_design=designDao.reidxList(idx);
			if(list_design==null){
				list_design="0";
			}
		String[] list2_design=list_design.split(",");
		
		for(int i=0; i<list2_design.length;i++){
			String to = list2_design[i];
				if(list2_design[i].equals(to)){
					System.out.println(to);
					String idx2 = Integer.toString(idx);
					List<MemberDTO>list3=designDao.designJoin(idx2);
					mav.addObject("list",list3);
					mav.addObject("idx",idx);
				}
		
		
		
		System.out.println(idx);
		
		}
		String list=classDao.reidxList(idx);
		if(list==null){
			list="0";
		}
	String[] list2=list.split(",");
	for(int i=0; i<list2.length;i++){
		String to = list2[i];
			if(list2[i].equals(to)){
				System.out.println(to);
				String idx2 = Integer.toString(idx);
				List<MemberDTO>list3=classDao.designJoin(idx2);
				mav.addObject("list",list3);
				mav.addObject("reidx",idx);
				mav.setViewName("class/designJoin");
				
			}
	}
		
	return mav;
	}
	
	
}
