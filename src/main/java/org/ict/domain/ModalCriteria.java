package org.ict.domain;

import lombok.Data;

@Data
public class ModalCriteria {
	private int page;
	private int number;
	
	public ModalCriteria () {
		this.page = 1;
		this.number = 3;
	}
	
	public int getPageStart() {
		return (this.page - 1) * number;
	}
}
