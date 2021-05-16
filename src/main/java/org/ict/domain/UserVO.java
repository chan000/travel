package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class UserVO {
	private String uid;
	private String upwd;
	private String uname;
	private String uemail;
	private Integer ugender;
	
	private String sessionId;
	private Date sessionLimit;
}
