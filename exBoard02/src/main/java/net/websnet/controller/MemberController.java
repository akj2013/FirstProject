package net.websnet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import net.websnet.domain.ImageVO;
import net.websnet.domain.MemberVO;
import net.websnet.service.ImageService;
import net.websnet.service.MemberService;

@Controller
@RequestMapping("/Member/*")
@AllArgsConstructor
public class MemberController {
	
	private MemberService service;

	

	@GetMapping("login") // 로그인 페이지
	public void login(HttpServletRequest request) {
		System.out.println("로그인 페이지를 호출합니다.");
		HttpSession session = request.getSession();
		session.invalidate();
	}

	@PostMapping("login") // 로그인 맵핑
	public String loginPro(MemberVO vo, HttpServletRequest request, Model model) {
		System.out.println("로그인을 진행합니다.");
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		HttpSession session = request.getSession();

		

		vo = service.memberLogin(vo);
		
		if (vo == null) { // SQL문이 실패했을 때
			System.out.println("로그인을 실패하였습니다.");
			return "redirect:/Member/login_pro";
		} else { // SQL문이 성공했을 때
			session.setAttribute("LoginUser", vo); // 로그인 유저 세션 객체 생성
			session.setMaxInactiveInterval(30); // 세션 시간 설정 : 초 단위
			System.out.println("로그인을 완료합니다.");
			return "redirect:/main";
		}

	}
	
	@GetMapping("logout") // 로그아웃
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("LoginUser")!=null) {
			return "redirect:/index";
		}else {
			System.out.println("session에 vo라는 속성이 null값입니다.");
			return "redirect:/index";
		}
	}

	@GetMapping("login_pro")
	public void loginPro() { // 로그인 유효성 검사

	}

	@GetMapping("join") // 회원가입 페이지
	public void join() {

	}

	@PostMapping("join") // 회원가입 맵핑
	public String JoinPro(MemberVO vo) {
		service.memberJoin(vo);
		return "redirect:/Member/login";
	}
	
}
