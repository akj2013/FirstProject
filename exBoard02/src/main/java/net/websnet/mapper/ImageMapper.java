package net.websnet.mapper;

import java.util.List;

import net.websnet.domain.Criteria;
import net.websnet.domain.ImageVO;

public interface ImageMapper {
	public void regist(ImageVO vo); // 등록
	public ImageVO select(ImageVO vo); // 불러오기
	public List<ImageVO> imageList(); // 게시물 전체 목록
	public List<ImageVO> getListWithPaging(Criteria cri); // 페이징
	public int imageCount(); // 데이터 갯수 카운팅 
}
