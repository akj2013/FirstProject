package net.websnet.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import net.websnet.domain.Criteria;
import net.websnet.domain.ImageVO;
import net.websnet.domain.PageVO;
import net.websnet.service.ImageService;

@Controller
@RequestMapping("/Image/*")
@AllArgsConstructor
public class ImageController {
	private static final Logger log = LoggerFactory.getLogger("BoardController.class");

	private ImageService service;


	@GetMapping("gallery")
	public void gallery(Model model, Criteria cri, HttpServletRequest request) {
		System.out.println("갤러리 페이지를 호출합니다.");
		model.addAttribute("list",service.imageList(cri));
		model.addAttribute("pageMaker", new PageVO(cri, service.imageCount()));
		request.setAttribute("page", "gallery");
	}

	@GetMapping("image")
	public void image() {
		System.out.println("파일 업로드 페이지를 호출합니다.");
	}
	
	// IE 버전에 따라 영향을 받는다. 폼방식
	@PostMapping("image")
	public void image_pro(MultipartFile[] uploadFile, Model model) {
		System.out.println("파일 업로드를 진행합니다.");
		
		String uploadFolder="C:\\Users\\akjak\\spring-workspace\\exBoard02\\src\\main\\webapp\\resources\\assets";
		
		for(MultipartFile multipartFile : uploadFile) {
			log.info("--------__________------------");
			log.info("Upload File 이름 : " + multipartFile.getOriginalFilename());
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
				System.out.println("파일 업로드가 완료되었습니다.");
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("업로드를 실패하였습니다.");
			}
			
		}
		
		// return "redirect:/Image/gallery";
	}
	
	// Ajax를 이용한 파일 업로드
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		System.out.println("Ajax 업로드 페이지를 호출합니다.");
	}
	
	@PostMapping("/uploadAjax")
	public String uploadAJax_pro(MultipartFile[] uploadFile, ImageVO vo) {
		System.out.println("Ajax를 이용한 파일 업로드를 진행합니다.");
		String uploadFolder = "C:\\Users\\akjak\\spring-workspace\\exBoard02\\src\\main\\webapp\\resources\\assets";
		for(MultipartFile multipartFile : uploadFile) {
			log.info("----------------------------------");
			log.info("Upload File Name : " + multipartFile.getOriginalFilename());
			log.info("Upload File Size : " + multipartFile.getSize());
			
			String uploadFileName = multipartFile.getOriginalFilename();
			
			//IE has file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			log.info("only file name : " + uploadFileName);
			
			// 중복 방지를 위한 UUID 적용
			UUID uuid=UUID.randomUUID();
			uploadFileName=uuid + "_" + uploadFileName;
			
			
			File saveFile = new File(uploadFolder, uploadFileName);
			
			vo.setFilename(uploadFileName);
			
			try {
				multipartFile.transferTo(saveFile);
				service.regist(vo);				
				System.out.println("파일 업로드를 완료했습니다.");
				
			}catch(Exception e) {
				log.error(e.getMessage());
				System.out.println("파일 업로드를 실패했습니다.");
				
			}
		}
		
		return "redirect:/Image/gallery";
	}
	
	@GetMapping("uploadAjax_pro")
	public void uploadAjax_pro() {
		System.out.println("uploadAjax_pro 페이지를 호출합니다.");
	}
}
