package kh.com.finalProject.files;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/files")
public class FileController {

	public FileController() {
		System.out.println("FileController 인스턴스 생성");
	}
	
	@Autowired
	private FileService service;
	
	
	
	

}
