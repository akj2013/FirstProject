package net.websnet.service;

import java.util.List;

import net.websnet.domain.Criteria;
import net.websnet.domain.ImageVO;

public interface ImageService {
	public void regist(ImageVO vo); // 등록
	public ImageVO select(ImageVO vo); // 불러오기
	public List<ImageVO> imageList(Criteria cri); // 게시물 전체 목록
	public int imageCount(); // 데이터 갯수 카운팅 
}
