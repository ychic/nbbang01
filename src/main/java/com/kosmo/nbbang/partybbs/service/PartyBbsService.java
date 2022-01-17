package com.kosmo.nbbang.partybbs.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface PartyBbsService {
	
	// 목록
	PartyBbsListPagingData<PartyBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage);
	
	// 전체 레코드 수
	int getTotalRecord(Map map);
	
	// 입력
	int insert(Map map);
	
} // end PartyBbsService 