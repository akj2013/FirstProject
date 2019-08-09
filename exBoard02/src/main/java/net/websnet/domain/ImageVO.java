package net.websnet.domain;

import lombok.Data;

@Data
public class ImageVO {
		private int idx; // 자동 증가 숫자
		private String name; // 이미지 이름
		private String message; // 이미지 메세지
		private String regtime; // 저장 시간
		private String filename; // 파일이름
}
