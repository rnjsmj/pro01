package org.gh.dto;

public class Place {
	//Place table
	private int pcode;		//장소코드
	private String pname;	//장소이름
	private String ptype;	//장소종류
	private String paddr;	//장소주소
	private String ptel;	//장소연락처
	private String pgps;	//장소gps값
	private String pcomm;	//장소설명
	private String pfile;   //첨부파일
	 
	public Place(int pcode, String pname, String ptype, String paddr, String ptel, String pgps, String pcomm,
			String pfile) {
		super();
		this.pcode = pcode;
		this.pname = pname;
		this.ptype = ptype;
		this.paddr = paddr;
		this.ptel = ptel;
		this.pgps = pgps;
		this.pcomm = pcomm;
		this.pfile = pfile;
	}
	
	public Place() {}

	public int getPcode() {
		return pcode;
	}

	public void setPcode(int pcode) {
		this.pcode = pcode;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public String getPaddr() {
		return paddr;
	}

	public void setPaddr(String paddr) {
		this.paddr = paddr;
	}

	public String getPtel() {
		return ptel;
	}

	public void setPtel(String ptel) {
		this.ptel = ptel;
	}

	public String getPgps() {
		return pgps;
	}

	public void setPgps(String pgps) {
		this.pgps = pgps;
	}

	public String getPcomm() {
		return pcomm;
	}

	public void setPcomm(String pcomm) {
		this.pcomm = pcomm;
	}


	public String getPfile() {
		return pfile;
	}

	public void setPfile(String pfile) {
		this.pfile = pfile;
	}

	@Override
	public String toString() {
		return "Place [pcode=" + pcode + ", pname=" + pname + ", ptype=" + ptype + ", paddr=" + paddr + ", ptel=" + ptel
				+ ", pgps=" + pgps + ", pcomm=" + pcomm  + ", pfile= "+ pfile +"]";
	}
	
	
}
