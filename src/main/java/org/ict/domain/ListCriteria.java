package org.ict.domain;

import lombok.Data;

@Data
public class ListCriteria {
	private int page;
	private int number;
	
	public ListCriteria () {
		this.page = 1;
		this.number = 5;
	}
	
	public int getPageStart() {
		return (this.page - 1) * number;
	}
}
