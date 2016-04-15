package papa.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

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
			String account=id;
			File f = new File("C:/Users/kyu/git/papajohns/papajohns/src/main/webapp/img/"+account+"/profile");
			File files[] = f.listFiles();
			ModelAndView mav = new ModelAndView();
			mav.addObject("files", files);
			mav.setViewName("file/fileUploadForm");
			return mav;
	}
	
	@RequestMapping("/fileUpload2.do")
	public String fileUpload2(@RequestParam("upload") MultipartFile upload){
		
		copyInto2(upload);
		
		return "file/fileOK";
	}



	// 업로드
	@RequestMapping("/fileupload1.do")
	public String fileUpload1(@RequestParam("upload") MultipartFile upload,@RequestParam("id") String id) {
		String account=id;
		System.out.println(account);
		File dir=new File("C:/Users/kyu/git/papajohns/papajohns/src/main/webapp/img/"+account+"/");
		dir.mkdir();
		if(!dir.exists()){
			copyInto(upload, account);
		}else{
			copyInto(upload, account);
		}
		

		return "file/fileOK";
	}

	@RequestMapping("/down.do")
	public ModelAndView download(@RequestParam("filename") String filename) {

		File f = new File("C:/Users/kyu/git/papajohns/papajohns/src/main/webapp/img/" + filename);

		ModelAndView mav = new ModelAndView("download", "downloadFile", f);
		return mav;
	}



	
	private void copyInto(MultipartFile upload, String account) {

		System.out.println("올린파일명" + upload.getOriginalFilename());

		try {
			byte bytes[] = upload.getBytes();
			File newFile = new File(
					"C:/Users/kyu/git/papajohns/papajohns/src/main/webapp/img/" +account+"/"+ "profile.jpg");
			FileOutputStream fos = new FileOutputStream(newFile);
			fos.write(bytes);// copy 행위
			fos.close();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}
	

@RequestMapping("/fileupload.do")
public ModelAndView fileList2(){
	File f=new File("C:/Users/user1/git/papajohns/papajohns/src/main/webapp/file");
	File files[]=f.listFiles();
	ModelAndView mav=new ModelAndView();
	mav.addObject("files",files);
	mav.setViewName("freebbs/bbsListForm");
	return mav;
}


@RequestMapping("/down2.do")
public ModelAndView download2(
		@RequestParam("filename")String filename){
	
	File f=new File("C:/Users/user1/git/papajohns/papajohns/src/main/webapp/file/"+filename);
	
	ModelAndView mav= new ModelAndView("download","downloadFile",f);
	return mav;
}




private void copyInto(MultipartFile upload){
	System.out.println("올린파일명"+upload.getOriginalFilename());
	
	try {
		byte bytes[]=upload.getBytes();
		File newFile= new File("C:/Users/kyu/git/papajohns/papajohns/src/main/webapp/img/"+upload.getOriginalFilename());
		FileOutputStream fos=new FileOutputStream(newFile);
		fos.write(bytes);//copy 행위
		fos.close();
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}



private void copyInto2(MultipartFile upload){
System.out.println("올린파일명"+upload.getOriginalFilename());

try {
	byte bytes[]=upload.getBytes();
	File newFile= new File("C:/Users/user1/git/papajohns/papajohns/src/main/webapp/file/"+upload.getOriginalFilename());
	FileOutputStream fos=new FileOutputStream(newFile);
	fos.write(bytes);//copy 행위
	fos.close();
} catch (IOException e) {
	
	e.printStackTrace();
}
}	


}
