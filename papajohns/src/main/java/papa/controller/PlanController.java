package papa.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.lang.reflect.Array;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLEditorKit.Parser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import papa.plan.model.PlanDAO;

@Controller
public class PlanController {
	
	@Autowired
	private PlanDAO planDao;

	public PlanDAO getPlanDao() {
		return planDao;
	}

	public void setPlanDao(PlanDAO planDao) {
		this.planDao = planDao;
	}
	
	@RequestMapping("/myPlan.do")
	public String plan(){
		return "plan/myPlan";
		
	}
	
	@RequestMapping("/myInfoPlan.do")
	public ModelAndView myInfoPlan(){
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg","하이루");
		mav.setViewName("plan/myInfoPlan");
		return mav;
	}
	
	@RequestMapping("/planSave.do")
	public ModelAndView planSave(HttpSession session, HttpServletRequest request, @RequestParam(value = "json", required = false, defaultValue = "") String json)
	{
			//System.out.println(json);
		System.out.println(json);
		String account=(String)session.getAttribute("sid");
		String path=request.getSession().getServletContext().getRealPath("/resource/data/"+account);
		try {
			File file = new File(path+"/data.json");
			Writer outFile = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), "utf-8"));
			//FileOutputStream(file.getPath(), "UTF-8");
			outFile.write(json);
			outFile.flush();
			outFile.close();
	 
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg","저장이 완료되었습니다.");
		mav.setViewName("plan/myInfoPlan");
		return mav;
	}
	/*
	// 업로드
	@RequestMapping("/fileupload1.do")
	public String fileUpload1(@RequestParam("upload") MultipartFile upload,@RequestParam("id") String id, HttpServletRequest request) {
		String account=id;
		String path=request.getSession().getServletContext().getRealPath("/resource/data/"+account+"/img");
		System.out.println(path);
		System.out.println(account);
		File temp=new File(request.getSession().getServletContext().getRealPath("/resource/data/"+account));
		temp.mkdir();
		File dir=new File(path);
		dir.mkdir();
		if(!dir.exists()){
			copyInto(upload, account, path);
		}else{
			copyInto(upload, account, path);
		}
		

		return "file/fileOK";
	}

	
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
	*/
}
