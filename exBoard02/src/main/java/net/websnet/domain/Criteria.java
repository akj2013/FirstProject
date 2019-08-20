package net.websnet.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;
	
	public Criteria() { // 기본 생성자
		this(1,6); // 페이지 당 출력되는 사진 갯수
	}
		
	public Criteria(int pageNum, int amount) { // 매개변수를 갖는 생성자
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
