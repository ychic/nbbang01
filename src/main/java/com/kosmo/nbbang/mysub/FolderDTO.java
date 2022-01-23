package com.kosmo.nbbang.mysub;

import java.util.List;

public class FolderDTO {
	private int sfno;
	private String sfname;
	private String email;
	//각 폴더에 따른 구독서비스 저장용
	//count빼봄
	//폴더에 따른 모든 '구독서비스' 목록 저장용 
	//(마이바티스 ResultMap 태그 Collection태그 적용용)
	List<MySubDTO> mysubs;
	//
	public int getSfno() {
		return sfno;
	}
	public void setSfno(int sfno) {
		this.sfno = sfno;
	}
	public String getSfname() {
		return sfname;
	}
	public void setSfname(String sfname) {
		this.sfname = sfname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<MySubDTO> getMysubs() {
		return mysubs;
	}
	public void setMysubs(List<MySubDTO> mysubs) {
		this.mysubs = mysubs;
	}

	
}
