package com.kosmo.nbbang.partykang.service;

import lombok.Getter;
import lombok.Setter;

//@Getter
//@Setter
public class MessageDTO {
	
	private String nickname;
	private String roomNo;
	private String message;
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}	
	
}
