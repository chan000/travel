package org.ict.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SeoulVO {
	private int sno;
	private int lno;
	private String sarea;
	private String spost;

	private int tbno;
	private String tbtitle;
	private String tinfo;
	private String tbthumnail;
	private String tbcontents1;
	private String tbcontents2;
	private String tbimg1;
	private String tbimg2;
	private String tbimg3;
	private String tbimg4;
	private String tbimg5;
	private String tbaddr1;
	private String tbaddr2;
	private Date tbupdatedate;

	private int cbno;
	private String cbtitle;
	private String cinfo;
	private String cbthumnail;
	private String cbcontents1;
	private String cbcontents2;
	private String cbimg1;
	private String cbimg2;
	private String cbimg3;
	private String cbimg4;
	private String cbimg5;
	private String cbaddr1;
	private String cbaddr2;
	private Date cbupdatedate;

	private int fbno;
	private String fbtitle;
	private String finfo;
	private String fbthumnail;
	private String fbcontents1;
	private String fbcontents2;
	private String fbimg1;
	private String fbimg2;
	private String fbimg3;
	private String fbimg4;
	private String fbimg5;
	private String fbaddr1;
	private String fbaddr2;
	private Date fbupdatedate;

}
