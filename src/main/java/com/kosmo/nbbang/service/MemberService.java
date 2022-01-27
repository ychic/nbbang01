package com.kosmo.nbbang.service;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public interface MemberService {
	//로그인 용
	int isLogin(Map map);
	//소셜로그인 용
	int socialLogin(Map map);
	//멤버리스트
	MemberListPaging<MemberDTO> selectAllMember(Map map, HttpServletRequest req, int nowPage);
	//채팅리스트
	MemberListPaging<AdminChatDTO> selectAllChat(Map map, HttpServletRequest req, int nowPage);
}
