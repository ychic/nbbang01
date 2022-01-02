package com.kosmo.nbbang.admin.service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/*@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor*/
public class AdminMemberDTO {
	
	private String email;
	private String password;
	private String name;
	private String nickname;
	private String birthdate;
	private String gender;
	private String tel;
	private String usertype;
	private String preference;
	private String authority;
	private String registdate;
	private String originprofile;
	private String profile;	
	
	public AdminMemberDTO() {}
	
	public AdminMemberDTO(String email, String password, String name, String nickname, String birthdate, String gender,
			String tel, String usertype, String preference, String authority, String registdate, String originprofile,
			String profile) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.birthdate = birthdate;
		this.gender = gender;
		this.tel = tel;
		this.usertype = usertype;
		this.preference = preference;
		this.authority = authority;
		this.registdate = registdate;
		this.originprofile = originprofile;
		this.profile = profile;
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
	
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	
	public String getPreference() {
		return preference;
	}
	public void setPreference(String preference) {
		this.preference = preference;
	}
	
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	public String getRegistdate() {
		return registdate;
	}
	public void setRegistdate(String registdate) {
		this.registdate = registdate;
	}
	
	public String getOriginprofile() {
		return originprofile;
	}
	public void setOriginprofile(String originprofile) {
		this.originprofile = originprofile;
	}
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
		
}
