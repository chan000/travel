package org.ict.domain;

import lombok.Data;

@Data
public class LoginDTO {

	private String uid;
	private String upwd;
	private boolean useCookie;
}
