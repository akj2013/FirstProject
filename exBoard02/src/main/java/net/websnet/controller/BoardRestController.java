package net.websnet.controller;

import java.util.HashMap;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import net.websnet.domain.Criteria;
import net.websnet.domain.PageVO;
import net.websnet.service.BoardService;

@RestController
@RequestMapping("/Rest")
@AllArgsConstructor
public class BoardRestController {
	private BoardService service;

	/*
	 * restful은 기본적으로 개발자간에 데이터 전송 형식을 API로 지정한다. list/[페이지당 보여줄 수]/[페이지 번호] 일반적으로
	 * restful은 url 형태로 데이터를 요청하기 때문에 조회에 국한(범위를 일정한 부분에 한정하는 것.)한다.
	 */
	@RequestMapping(value = "/BoardListAjax/{pagePerCnt}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public HashMap<String, Object> listSub(@PathVariable int page, @PathVariable int pagePerCnt) {
		System.out.println("Rest컨트롤러로 페이지를 호출합니다.");
		Criteria cri = new Criteria(page, pagePerCnt); // jsp에서 넘겨받은 호출 page와 몇 개씩 출력할지 골라준 pagePerCnt를 매개변수로 사용하여 생성자로 cri 객체를 만든다.
		System.out.println("page : " + page + " and cri : " + cri );
		HashMap<String, Object> json = new HashMap<String, Object>();
		json.put("list", service.boardList(cri)); // VO 객체 arraylist
		json.put("pageMaker", new PageVO(cri, service.boardCount())); // start, end, total 페이지
		json.put("currPage", page); // 현재 페이지
		// range(생성 가능한 총 페이지 수)는 pageMaker.endPage
		json.put("page", "board"); // 헤더 페이지 확인 
		return json;
	}

	// index 요청이 오면 list.jsp로 전송
	// string 반환시 문자열이 response로 찍힌다.
	// 그래서 특정 페이지 이동시 ModelAndView를 사용한다.
	@RequestMapping(value = "/index")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("BoardListAjax");
		return mav;
	}

	// list?cnt=20&page=1
	@RequestMapping(value = "/list")
	public HashMap<String, Object> list(@RequestParam HashMap<String, String> params, Criteria cri) {
		HashMap<String, Object> json = new HashMap<String, Object>();
		String page = params.get("page");
		String pagePerCnt = params.get("pagePerCnt");
		cri.setAmount(Integer.parseInt(pagePerCnt)); // 페이지당 보여줄 수
		service.boardList(cri);
		json.put("list", service.boardList(cri)); // VO 객체 arraylist
		json.put("pageMaker", new PageVO(cri, service.boardCount())); // start, end, total 페이지
		json.put("currPage", page); // 현재 페이지
		return json;
	}

}
