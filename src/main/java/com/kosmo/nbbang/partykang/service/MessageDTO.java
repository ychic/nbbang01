package com.kosmo.nbbang.partykang.service;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

/*
@Getter
@Setter
*/
public class MessageDTO {

	private String nickname;
	private String roomNo;
	private String message;
	private String time;

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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public MessageDTO(String nickname, String roomNo, String message, String time) {
		super();
		this.nickname = nickname;
		this.roomNo = roomNo;
		this.message = message;
		this.time = time;
	}

	public MessageDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return String.format(
				"{\"nickname\":\"%s\", \"roomNo\":\"%s\", \"message\":\"%s\", \"time\":\"%s\"}",
				nickname, roomNo, message, time);
	}

}