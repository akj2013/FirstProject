package net.websnet.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@GetMapping("main") // 로그인 완료 후 넘어가는 메인 페이지
	public void main(HttpServletRequest request) {
		System.out.println("메인 페이지를 호출합니다.");
		HttpSession Mainsession = request.getSession();
		Mainsession.setAttribute("page","main");
	}

	@GetMapping("main_pro") // 로그인 없이 넘어가는 메인 페이지
	public String main_pro(HttpServletRequest request) {
		System.out.println("로그인 없이 메인 페이지를 호출합니다.");
		HttpSession session = request.getSession();
		session.setAttribute("login", "guest");
		HttpSession Mainsession = request.getSession();
		Mainsession.setAttribute("page","main");
		return "redirect:/main";
	}
	
	@GetMapping("index") // 인덱스 페이지 호출
	public void index(HttpServletRequest request) {
		System.out.println("index 페이지를 호출합니다.");
		
		HttpSession session = request.getSession();
		session.removeAttribute("LoginUser"); // 로그인유저 세션을 삭제합니다.
		session.removeAttribute("login"); // 게스트접속 세션을 삭제합니다.
		session.removeAttribute("page"); // 페이지 세션을 삭제합니다.
		
		HttpSession indexSession = request.getSession();
		indexSession.setAttribute("page","index");
	}
}
