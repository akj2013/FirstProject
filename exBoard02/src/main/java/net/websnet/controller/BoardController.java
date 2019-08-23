package net.websnet.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import net.websnet.domain.BoardVO;
import net.websnet.domain.Criteria;
import net.websnet.domain.PageVO;
import net.websnet.service.BoardService;

@Controller // 스프링의 빈으로 인식할 수 있게 하는 어노테이션

@RequestMapping("/board/*") // board로 시작하는 모든 처리를 여기서 하도록 지정합니다.

@AllArgsConstructor // BoardController가 BoardService에 의존적이므로 생성자를 만들고 자동으로 주입하도록 합니다. 
								// 만일 생성자를 만들지 않을 경우에는 @Setter(onMethod_={@Autowired}를 이용해서 처리합니다.
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("/BoardList")
	public void list(Model model) {
		System.out.println("리스트 페이지를 호출합니다.");
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("/BoardWrite")
	public void register() {

	}
	
	@PostMapping("/BoardWrite")
	public String register(BoardVO board, RedirectAttributes rttr) {

		service.register(board);
		rttr.addFlashAttribute("result", board.getBno());
		return "redirect:/board/BoardListWithPaging"; // redirect 접두어를 이용하면 스프링 MVC가 내부적으로 response.sendRedirect()를 처리해 준다.
	}
	
	@GetMapping({"/get","/BoardModify"})
	public void get(@RequestParam("bno") Long bno, Model model) {
		System.out.println(bno);
		model.addAttribute("board", service.get(bno));
	}
	
	@GetMapping("/BoardView")
	public void set(@RequestParam("bno") Long bno, Model model) {
		System.out.println("set이라는 메서드입니다.2");
		System.out.println(bno);
		model.addAttribute("board", service.get(bno));
	}
	
	@PostMapping("/BoardModify")
	public String modify(BoardVO board, RedirectAttributes rttr) {

		if(service.modify(board)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/board/BoardView?bno="+board.getBno();
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {

		if(service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/BoardListWithPaging";
	}
	
	@GetMapping("/BoardDelete")
	public String remove(@RequestParam("bno") Long bno) {
		service.remove(bno);
		return "redirect:/board/BoardListWithPaging";
	}
	
	@GetMapping("/BoardListWithPaging")
	public void list(Model model, HttpServletRequest request, Criteria cri) {
		System.out.println("게시판 페이지를 페이징 기법으로 호출합니다.");
		cri.setAmount(5);// 1페이지 당 5개씩 출력되도록 생성자를 이용한다.
		model.addAttribute("list",service.boardList(cri));
		model.addAttribute("pageMaker", new PageVO(cri, service.boardCount()));
		request.setAttribute("page", "board");
	}
	
	@GetMapping("/BoardListAjax")
	public void test() {
		System.out.println("BoardController에서 BoardListAjax 페이지를 호출합니다.");
	}
}
