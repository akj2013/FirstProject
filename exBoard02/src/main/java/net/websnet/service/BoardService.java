package net.websnet.service;

import java.util.List;

import net.websnet.domain.BoardVO;
import net.websnet.domain.Criteria;

public interface BoardService {
	public void register(BoardVO board);
	public BoardVO get(Long bno);
	public boolean modify(BoardVO board);
	public boolean remove(Long bno);
	public List<BoardVO> getList();
	public List<BoardVO> boardList(Criteria cri); // 페이징 기법으로 호출
	public int boardCount(); // 데이터 갯수 카운팅
}
