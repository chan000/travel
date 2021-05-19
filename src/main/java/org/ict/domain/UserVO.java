package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class UserVO {

	private int uno;
	private String uid;
	private String upwd;
	private String uname;
	private String unickname;
	private String uemail;
	
	private String sessionId;
	private Date sessionLimit;
	
}
