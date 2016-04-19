package papa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import papa.design.model.designDAO;
import papa.design.model.designDTO;
import papa.member.model.MemberDTO;

@Controller
public class DesignController {
	
	@Autowired
	private designDAO designDao;

	public designDAO getDesignDao() {
		return designDao;
	}

	public void setDesignDao(designDAO designDao) {
		this.designDao = designDao;
	}
	@RequestMapping("/designAdd.do")
	public ModelAndView designAdd(@RequestParam(value="a1",defaultValue="-1")String a1,@RequestParam(value="a2",defaultValue="-1")String a2,
			@RequestParam(value="a3",defaultValue="-1")String a3,@RequestParam(value="a4",defaultValue="-1")String a4,
			@RequestParam(value="a5",defaultValue="-1")String a5,@RequestParam(value="a6",defaultValue="-1")String a6,
			@RequestParam(value="a7",defaultValue="-1")String a7,@RequestParam(value="a8",defaultValue="-1")String a8,
			@RequestParam(value="a9",defaultValue="-1")String a9,@RequestParam(value="a10",defaultValue="-1")String a10,
			@RequestParam(value="a11",defaultValue="-1")String a11,@RequestParam(value="a12",defaultValue="-1")String a12,
			@RequestParam(value="a13",defaultValue="-1")String a13,@RequestParam(value="a14",defaultValue="-1")String a14,
			@RequestParam(value="a15",defaultValue="-1")String a15,@RequestParam(value="a16",defaultValue="-1")String a16,
			@RequestParam(value="a17",defaultValue="-1")String a17,@RequestParam(value="a18",defaultValue="-1")String a18,
			@RequestParam(value="x1",defaultValue="-1")int x1,@RequestParam(value="x2",defaultValue="-1")int x2,
			@RequestParam(value="x3",defaultValue="-1")int x3,@RequestParam(value="x4",defaultValue="-1")int x4,
			@RequestParam(value="x5",defaultValue="-1")int x5,@RequestParam(value="x6",defaultValue="-1")int x6,
			@RequestParam(value="x7",defaultValue="-1")int x7,@RequestParam(value="x8",defaultValue="-1")int x8,
			@RequestParam(value="x9",defaultValue="-1")int x9,@RequestParam(value="x10",defaultValue="-1")int x10,
			@RequestParam(value="x11",defaultValue="-1")int x11,@RequestParam(value="x12",defaultValue="-1")int x12,
			@RequestParam(value="x13",defaultValue="-1")int x13,@RequestParam(value="x14",defaultValue="-1")int x14,
			@RequestParam(value="x15",defaultValue="-1")int x15,@RequestParam(value="x16",defaultValue="-1")int x16,
			@RequestParam(value="x17",defaultValue="-1")int x17,@RequestParam(value="x18",defaultValue="-1")int x18,
			@RequestParam(value="x19",defaultValue="-1")int x19,@RequestParam(value="x20",defaultValue="-1")int x20,
			@RequestParam(value="x21",defaultValue="-1")int x21,@RequestParam(value="x22",defaultValue="-1")int x22,
			@RequestParam(value="x23",defaultValue="-1")int x23,@RequestParam(value="x24",defaultValue="-1")int x24,
			@RequestParam(value="x25",defaultValue="-1")int x25,@RequestParam(value="x26",defaultValue="-1")int x26,
			@RequestParam(value="x27",defaultValue="-1")int x27,@RequestParam(value="x28",defaultValue="-1")int x28,
			@RequestParam(value="x29",defaultValue="-1")int x29,@RequestParam(value="x30",defaultValue="-1")int x30,
			@RequestParam(value="y1",defaultValue="-1")int y1,@RequestParam(value="y2",defaultValue="-1")int y2,
			@RequestParam(value="y3",defaultValue="-1")int y3,@RequestParam(value="y4",defaultValue="-1")int y4,
			@RequestParam(value="y5",defaultValue="-1")int y5,@RequestParam(value="y6",defaultValue="-1")int y6,
			@RequestParam(value="y7",defaultValue="-1")int y7,@RequestParam(value="y8",defaultValue="-1")int y8,
			@RequestParam(value="y9",defaultValue="-1")int y9,@RequestParam(value="y10",defaultValue="-1")int y10,
			@RequestParam(value="y11",defaultValue="-1")int y11,@RequestParam(value="y12",defaultValue="-1")int y12,
			@RequestParam(value="y13",defaultValue="-1")int y13,@RequestParam(value="y14",defaultValue="-1")int y14,
			@RequestParam(value="y15",defaultValue="-1")int y15,@RequestParam(value="y16",defaultValue="-1")int y16,
			@RequestParam(value="y17",defaultValue="-1")int y17,@RequestParam(value="y18",defaultValue="-1")int y18,
			@RequestParam(value="y19",defaultValue="-1")int y19,@RequestParam(value="y20",defaultValue="-1")int y20,
			@RequestParam(value="y21",defaultValue="-1")int y21,@RequestParam(value="y22",defaultValue="-1")int y22,
			@RequestParam(value="y23",defaultValue="-1")int y23,@RequestParam(value="y24",defaultValue="-1")int y24,
			@RequestParam(value="y25",defaultValue="-1")int y25,@RequestParam(value="y26",defaultValue="-1")int y26,
			@RequestParam(value="y27",defaultValue="-1")int y27,@RequestParam(value="y28",defaultValue="-1")int y28,
			@RequestParam(value="y29",defaultValue="-1")int y29,@RequestParam(value="y30",defaultValue="-1")int y30,
			@RequestParam(value="a20",defaultValue="-1")String a20,@RequestParam(value="a21",defaultValue="-1")String a21,
			@RequestParam(value="a22",defaultValue="-1")String a22,@RequestParam(value="a23",defaultValue="-1")String a23,
			@RequestParam(value="a24",defaultValue="-1")String a24,@RequestParam(value="a25",defaultValue="-1")String a25,
			@RequestParam(value="a26",defaultValue="-1")String a26,@RequestParam(value="a27",defaultValue="-1")String a27,
			@RequestParam(value="a28",defaultValue="-1")String a28,@RequestParam(value="a29",defaultValue="-1")String a29,
			@RequestParam(value="a30",defaultValue="-1")String a30,@RequestParam(value="a19",defaultValue="-1")String a19,
			@RequestParam(value="reidx",defaultValue="-1")int reidx){
		String send="";
		
		
		a1=a1.replaceAll("ui-draggable ui-droppable","");
		
		a2=a2.replace("ui-draggable ui-droppable","");
		a3=a3.replace("ui-draggable","");
		a4=a4.replace("ui-draggable","");
		a5=a5.replace("ui-draggable","");
		a6=a6.replace("ui-draggable","");
		a7=a7.replace("ui-draggable","");
		a8=a8.replace("ui-draggable","");
		a9=a9.replace("ui-draggable","");
		a10=a10.replace("ui-draggable","");
		a11=a11.replace("ui-draggable","");
		a12=a12.replace("ui-draggable","");
		a13=a13.replace("ui-draggable","");
		a14=a14.replace("ui-draggable","");
		a15=a15.replace("ui-draggable","");
		a16=a16.replace("ui-draggable","");
		a17=a17.replace("ui-draggable","");
		a18=a18.replace("ui-draggable","");
		a19=a19.replace("ui-draggable","");
		a20=a20.replace("ui-draggable","");
		a21=a21.replace("ui-draggable","");
		a22=a22.replace("ui-draggable","");
		a23=a23.replace("ui-draggable","");
		a24=a24.replace("ui-draggable","");
		a25=a25.replace("ui-draggable","");
		a26=a26.replace("ui-draggable","");
		a27=a27.replace("ui-draggable","");
		a28=a28.replace("ui-draggable","");
		a29=a29.replace("ui-draggable","");
		a30=a30.replace("ui-draggable","");
		
		send+=",";
		send+=a1;send+=",";
		send+=a2;send+=",";
		send+=a3;send+=",";
		send+=a4;send+=",";
		send+=a5;send+=",";
		send+=a6;send+=",";
		send+=a7;send+=",";
		send+=a8;send+=",";
		send+=a9;send+=",";
		send+=a10;send+=",";
		send+=a11;send+=",";
		send+=a12;send+=",";
		send+=a13;send+=",";
		send+=a14;send+=",";
		send+=a15;send+=",";
		send+=a16;send+=",";
		send+=a17;send+=",";
		send+=a18;send+=",";
		send+=a19;send+=",";
		send+=a20;send+=",";
		send+=a21;send+=",";
		send+=a22;send+=",";
		send+=a23;send+=",";
		send+=a24;send+=",";
		send+=a25;send+=",";
		send+=a26;send+=",";
		send+=a27;send+=",";
		send+=a28;send+=",";
		send+=a29;send+=",";
		send+=a30;
		
		
		String s_x1=Integer.toString(x1);
		String s_x2=Integer.toString(x2);
		String s_x3=Integer.toString(x3);
		String s_x4=Integer.toString(x4);
		String s_x5=Integer.toString(x5);
		String s_x6=Integer.toString(x6);
		String s_x7=Integer.toString(x7);
		String s_x8=Integer.toString(x8);
		String s_x9=Integer.toString(x9);
		String s_x10=Integer.toString(x10);
		String s_x11=Integer.toString(x11);
		String s_x12=Integer.toString(x12);
		String s_x13=Integer.toString(x13);
		String s_x14=Integer.toString(x14);
		String s_x15=Integer.toString(x15);
		String s_x16=Integer.toString(x16);
		String s_x17=Integer.toString(x17);
		String s_x18=Integer.toString(x18);
		String s_x19=Integer.toString(x19);
		String s_x20=Integer.toString(x20);
		String s_x21=Integer.toString(x21);
		String s_x22=Integer.toString(x22);
		String s_x23=Integer.toString(x23);
		String s_x24=Integer.toString(x24);
		String s_x25=Integer.toString(x25);
		String s_x26=Integer.toString(x26);
		String s_x27=Integer.toString(x27);
		String s_x28=Integer.toString(x28);
		String s_x29=Integer.toString(x29);
		String s_x30=Integer.toString(x30);
		
		send+=",";
		send+=s_x1;send+=",";
		send+=s_x2;send+=",";
		send+=s_x3;send+=",";
		send+=s_x4;send+=",";
		send+=s_x5;send+=",";
		send+=s_x6;send+=",";
		send+=s_x7;send+=",";
		send+=s_x8;send+=",";
		send+=s_x9;send+=",";
		send+=s_x10;send+=",";
		send+=s_x11;send+=",";
		send+=s_x12;send+=",";
		send+=s_x13;send+=",";
		send+=s_x14;send+=",";
		send+=s_x15;send+=",";
		send+=s_x16;send+=",";
		send+=s_x17;send+=",";
		send+=s_x18;send+=",";
		send+=s_x19;send+=",";
		send+=s_x20;send+=",";
		send+=s_x21;send+=",";
		send+=s_x22;send+=",";
		send+=s_x23;send+=",";
		send+=s_x24;send+=",";
		send+=s_x25;send+=",";
		send+=s_x26;send+=",";
		send+=s_x27;send+=",";
		send+=s_x28;send+=",";
		send+=s_x29;send+=",";
		send+=s_x30;
		
		
		String s_y1=Integer.toString(y1);
		String s_y2=Integer.toString(y2);
		String s_y3=Integer.toString(y3);
		String s_y4=Integer.toString(y4);
		String s_y5=Integer.toString(y5);
		String s_y6=Integer.toString(y6);
		String s_y7=Integer.toString(y7);
		String s_y8=Integer.toString(y8);
		String s_y9=Integer.toString(y9);
		String s_y10=Integer.toString(y10);
		String s_y11=Integer.toString(y11);
		String s_y12=Integer.toString(y12);
		String s_y13=Integer.toString(y13);
		String s_y14=Integer.toString(y14);
		String s_y15=Integer.toString(y15);
		String s_y16=Integer.toString(y16);
		String s_y17=Integer.toString(y17);
		String s_y18=Integer.toString(y18);
		String s_y19=Integer.toString(y19);
		String s_y20=Integer.toString(y20);
		String s_y21=Integer.toString(y21);
		String s_y22=Integer.toString(y22);
		String s_y23=Integer.toString(y23);
		String s_y24=Integer.toString(y24);
		String s_y25=Integer.toString(y25);
		String s_y26=Integer.toString(y26);
		String s_y27=Integer.toString(y27);
		String s_y28=Integer.toString(y28);
		String s_y29=Integer.toString(y29);
		String s_y30=Integer.toString(y30);
		
		send+=",";
		send+=s_y1;send+=",";
		send+=s_y2;send+=",";
		send+=s_y3;send+=",";
		send+=s_y4;send+=",";
		send+=s_y5;send+=",";
		send+=s_y6;send+=",";
		send+=s_y7;send+=",";
		send+=s_y8;send+=",";
		send+=s_y9;send+=",";
		send+=s_y10;send+=",";
		send+=s_y11;send+=",";
		send+=s_y12;send+=",";
		send+=s_y13;send+=",";
		send+=s_y14;send+=",";
		send+=s_y15;send+=",";
		send+=s_y16;send+=",";
		send+=s_y17;send+=",";
		send+=s_y18;send+=",";
		send+=s_y19;send+=",";
		send+=s_y20;send+=",";
		send+=s_y21;send+=",";
		send+=s_y22;send+=",";
		send+=s_y23;send+=",";
		send+=s_y24;send+=",";
		send+=s_y25;send+=",";
		send+=s_y26;send+=",";
		send+=s_y27;send+=",";
		send+=s_y28;send+=",";
		send+=s_y29;send+=",";
		send+=s_y30;
		
		send+=",";
		
		int result=designDao.designAdd(send,reidx);
		
		String msg=result>0?"등록성공":"실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("design/msg");
		return mav;
	}
	@RequestMapping("/myClassRoom.do")
	public ModelAndView myClassRoom(int idx){
		
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
		   
		   String list=designDao.reidxList(idx);
			if(list==null){
				list="0";
			}
		String[] list2=list.split(",");
		
		for(int i=0; i<list2.length;i++){
			String to = list2[i];
				if(list2[i].equals(to)){
					System.out.println(to);
					String idx2 = Integer.toString(idx);
					List<MemberDTO>list3=designDao.designJoin(idx2);
					mav.addObject("list",list3);
					mav.addObject("idx",idx);
				}
		mav.setViewName("design/myClassRoom");
		
	}
		return mav;
	}
	
	
	

	
}
