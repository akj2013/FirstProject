package net.websnet.mapper;

import java.util.List;

import net.websnet.domain.BoardVO;

public interface BoardMapper {

	public List<BoardVO> getList();
	public void insert(BoardVO board);
	public void insertSelectKey(BoardVO board);
	public BoardVO read(Long bno);
	public int delete(Long bno);
	public int update(BoardVO board);
}
