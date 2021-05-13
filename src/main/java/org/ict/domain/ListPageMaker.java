package org.ict.domain;

import lombok.Data;

@Data
public class ListPageMaker {

	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int totalReply;
	
	// 페이지당 버튼을 몇 개씩 생성할지
	private int displayPageNum;
	
	// 현재 조회중인 페이지를 알아야 버튼을 생성할 수 있음
	private ListCriteria cri;
	
	// 페이지가 바뀔 때마다 버튼 갯수 및 범위를 산출하는 메서드
	public void calcData() {
		this.displayPageNum = 10;
		
		this.endPage = (int)(Math.ceil(cri.getPage() /
			(double) displayPageNum) *  displayPageNum);
		
		this.startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int)(Math.ceil(totalCount /
				(double)cri.getNumber()));
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true;
		
		next = endPage * cri.getNumber() >= 
				totalCount ? false : true;
		
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}
	
	
	
}
