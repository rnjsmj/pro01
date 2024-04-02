package org.gh.dto;

public class Member {
	private String userid;		//아이디
	private String password;	//비밀번호
	private String birth;		//생년월일
	private String tel;			//전화번호
	private String email;		//회원이메일
	
	public Member(String userid, String password, String birth, String tel, String email) {
		super();
		this.userid = userid;
		this.password = password;
		this.birth = birth;
		this.tel = tel;
		this.email = email;
	}
	
	public Member() {}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
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

	@Override
	public String toString() {
		return "Member [userid=" + userid + ", password=" + password + ", birth=" + birth + ", tel=" + tel + ", email="
				+ email + "]";
	}
	
	
}