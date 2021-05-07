package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {

	private Integer bno;
	private String title;
	private String contents;
	private String writer;
	private Date date;
	
	
}
