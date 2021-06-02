package org.ict.domain;

import lombok.Data;

@Data
public class CultureCriteria {
	private int page;
	private int number;

	private int lno;

	public CultureCriteria() {
		this.page = 1;
		this.number = 8;
	}

	public int getPageStart() {
		return (this.page - 1) * number;
	}
}
