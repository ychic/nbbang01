package com.kosmo.nbbang.park.join;

public class JoinFormCommand {
	//폼의 파라미터명과 같게 속성(멤버변수)정의
	private String name;
	private String nickname;
	private String email;
	private String password;
	private String tel;
	private String gender;
	private String birthdate;
	private String[] preference;
	
	
	//게터&세터
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String[] getPreference() {
		return preference;
	}
	public void setPreference(String[] preference) {
		this.preference = preference;
	}
	
}
