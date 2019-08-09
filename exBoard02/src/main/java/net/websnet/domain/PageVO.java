package net.websnet.domain;

import lombok.Getter;
import lombok.ToString;
/*
 * PageVO 는 생성자를 정의하고 Criteria와 전체 데이터 수(total)를 파라미터로 지정합니다. Criteria 안에는 페이지에서 보여주는 데이터 수(amount)와 현재 페이지 번호(pageNum)을
 * 가지고 있기 때문에 이를 이용해서 필요한 모든 내용을 계산할 수 있습니다.
 */
@Getter
@ToString
public class PageVO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private Criteria cri;
	
	public PageVO(Criteria cri, int total) {
		this.cri=cri;
		this.total=total;
		
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
		this.startPage = this.endPage - 9;
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}
