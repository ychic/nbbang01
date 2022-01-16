package com.kosmo.nbbang.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.kosmo.nbbang.hwang.service.ListPagingData;

public interface InquiryBbsService {
	//입력/수정/삭제
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	
	
	//전체 목록용
	ListPagingData<InquiryBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage);

	//전체 레코드 수
	int getTotalRecord(Map map);
	
	//페이지 상세보기
	InquiryBbsDTO inqSelectOne(Map map);
	
	

	

}
