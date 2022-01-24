package com.kosmo.nbbang.partybbs.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface PartyBbsService {
	
	// 목록
	PartyBbsListPagingData<PartyBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage);
	
	// 넷플릭스 목록
	PartyBbsListPagingData<PartyBbsDTO> netplixList(Map map, HttpServletRequest req, int nowPage);
	
	// 왓챠 목록
	PartyBbsListPagingData<PartyBbsDTO> whatchaList(Map map, HttpServletRequest req, int nowPage);
	
	// 디즈니 목록
	PartyBbsListPagingData<PartyBbsDTO> disneyList(Map map, HttpServletRequest req, int nowPage);
	
	// 라프텔 목록
	PartyBbsListPagingData<PartyBbsDTO> laftelList(Map map, HttpServletRequest req, int nowPage);
	
	// 티빙 목록
	PartyBbsListPagingData<PartyBbsDTO> tvingList(Map map, HttpServletRequest req, int nowPage);
	
	// 웨이브 목록
	PartyBbsListPagingData<PartyBbsDTO> wavveList(Map map, HttpServletRequest req, int nowPage);
	
	// 파티 멤버 수
	int getPartyMemberCount(Map map);
	
	// 전체 레코드 수
	int getTotalRecord(Map map);
	
	// 입력
	int insert(Map map);
	
	// 삭제
	int delete(Map map);

} // end PartyBbsService 