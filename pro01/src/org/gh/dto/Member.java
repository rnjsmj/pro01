package org.gh.dto;

public class Member {
	private String id;		//아이디
	private String password;	//비밀번호
	private String name;		//이름
	private String tel;			//전화번호
	private String email;		//회원이메일
	private String regdate; 	//가입일시
	
	public Member(String id, String password, String name, String tel, String email, String regdate) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.regdate = regdate;
	}
	
	public Member() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", tel=" + tel + ", email="
				+ email + ", regdate=" + regdate + "]";
	}

	
	
}
