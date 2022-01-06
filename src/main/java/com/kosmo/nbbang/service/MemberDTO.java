package com.kosmo.nbbang.service;

import java.sql.Date;

public class MemberDTO {
	
	/*
		email varchar2(40) NOT NULL,
		password varchar2(20),
		name nvarchar2(10) NOT NULL,
		nickname nvarchar2(20) NOT NULL UNIQUE,
		birthdate nvarchar2(12) NOT NULL,
		gender char(5) NOT NULL,
		tel varchar2(13) NOT NULL,
		usertype char(5) NOT NULL,
		preference varchar2(50),
		authority varchar2(10) NOT NULL,
		registdate date DEFAULT SYSDATE NOT NULL,
		oringinprofile nvarchar2(25),
		profile nvarchar2(30),
	*/
	
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
	private java.sql.Date registdate;
	private String oringinprofile;
	private String profile;
	
	//[constructor]
	public MemberDTO() {
		super();
	}
	public MemberDTO(String email, String password, String name, String nickname, String birthdate, String gender,
			String tel, String usertype, String preference, String authority, Date registdate, String oringinprofile,
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
		this.oringinprofile = oringinprofile;
		this.profile = profile;
	}


	//[getters,setters]
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
	public java.sql.Date getRegistdate() {
		return registdate;
	}
	public void setRegistdate(java.sql.Date registdate) {
		this.registdate = registdate;
	}
	public String getOringinprofile() {
		return oringinprofile;
	}
	public void setOringinprofile(String oringinprofile) {
		this.oringinprofile = oringinprofile;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	

}
