package net.websnet.mapper;

import java.util.List;

import net.websnet.domain.BoardVO;
import net.websnet.domain.Criteria;

public interface BoardMapper {
	public List<BoardVO> getList();
	public void insert(BoardVO board);
	public void insertSelectKey(BoardVO board);
	public BoardVO read(Long bno);
	public int delete(Long bno);
	public int update(BoardVO board);
	public List<BoardVO> getListWithPaging(Criteria cri); // 페이징
	public int boardCount(); // 데이터 갯수 카운팅
}
