package net.websnet.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import net.websnet.domain.Criteria;
import net.websnet.domain.ImageVO;
import net.websnet.mapper.ImageMapper;

@Service
@AllArgsConstructor
public class ImageServiceImpl implements ImageService {

	private static final Logger log = LoggerFactory.getLogger("BoardController.class");
	
	@Setter(onMethod_=@Autowired)
	private ImageMapper mapper;
	
	@Override
	public void regist(ImageVO vo) {
		mapper.regist(vo);
	}

	@Override
	public ImageVO select(ImageVO vo) {
		return mapper.select(vo);
	}

	@Override
	public List<ImageVO> imageList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int imageCount() {
		return mapper.imageCount();
	}

}
