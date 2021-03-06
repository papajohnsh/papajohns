package papa.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

//리스트
@Controller
public class FileController {
	

	@RequestMapping("/fileUpload.do")
	public ModelAndView fileList(@RequestParam("id") String id) {
		//application.getRealPath("/upload");
			String account=id;
			File f = new File("C:/Sukkyu/jspstudy/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/papajohns/img/"+account+"/"+"profile");
			File files[] = f.listFiles();
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("files", files);
			mav.setViewName("file/fileUploadForm");
			return mav;
	}
	



	
	@RequestMapping("/down.do")
	public ModelAndView download(@RequestParam("filename")String filename){
		
		File f=new File("C:/Users/kyu/git/papajohns/papajohns/src/main/webapp/img/"+filename);
		
		ModelAndView mav= new ModelAndView("download","downloadFile",f);
		return mav;	
	}

	@RequestMapping("/fileUpload2.do")
	public String fileUpload2(@RequestParam("upload") MultipartFile upload,@RequestParam("id") String id, HttpServletRequest request) {
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
			copyInto2(upload, account, path);
		}else{
			copyInto2(upload, account, path);
		}
		

		return "file/fileOK";
	}
	

	
	private void copyInto2(MultipartFile upload, String account, String path) {
		System.out.println("올린파일명" + upload.getOriginalFilename());

		try {
			byte bytes[] = upload.getBytes();
			File newFile = new File(path+"/"+upload.getOriginalFilename());
			FileOutputStream fos = new FileOutputStream(newFile);
			fos.write(bytes);// copy 행위
			fos.close();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}
	

	// 업로드
	@RequestMapping("/fileupload1.do")
	public String fileUpload1(@RequestParam("upload") MultipartFile upload,@RequestParam("id") String id, HttpServletRequest request) {
		String account=id;
		String path=request.getSession().getServletContext().getRealPath("/resource/data/"+account);
		System.out.println("파일 업로드 주소"+path);
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
	

//파일 다운로드 리스트
@RequestMapping("/bbsFileList.do")
public ModelAndView fileList2(){
	File f=new File("E:/joo/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/papajohns/resource/data");
	File files[]=f.listFiles();
	ModelAndView mav=new ModelAndView();
	mav.addObject("files",files);
	mav.setViewName("freebbs/bbsListForm");
	return mav;
}

//파일 다운로드 처리
@RequestMapping("/down2.do")
public ModelAndView download2(
		@RequestParam("filename")String filename){
	
	File f=new File("E:/joo/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/papajohns/resource/data"+filename);
	
	ModelAndView mav= new ModelAndView("download","downloadFile",f);
	return mav;
}




private void copyInto(MultipartFile upload){
	System.out.println("올린파일명"+upload.getOriginalFilename());
	
	try {
		byte bytes[]=upload.getBytes();
		File newFile= new File("C:/Users/Jo HH/Pictures/Saved Pictures/"+upload.getOriginalFilename());
		FileOutputStream fos=new FileOutputStream(newFile);
		fos.write(bytes);//copy 행위
		fos.close();
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}




}