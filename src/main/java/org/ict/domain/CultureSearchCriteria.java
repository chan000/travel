package org.ict.domain;

import lombok.Data;

@Data
public class CultureSearchCriteria extends CultureCriteria {

	private String searchType;
	private String keyword;
}
