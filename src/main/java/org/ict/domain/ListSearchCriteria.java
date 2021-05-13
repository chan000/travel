package org.ict.domain;

import lombok.Data;

@Data
public class ListSearchCriteria extends ListCriteria {

	private String searchType;
	private String keyword;
}
