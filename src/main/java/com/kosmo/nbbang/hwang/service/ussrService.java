package com.kosmo.nbbang.hwang.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public interface ussrService {
	//목록용]
	ListPagingData<ussrDTO> selectList(Map map,HttpServletRequest req,int nowPage);
	//상세보기용]
	ussrDTO selectOne(Map map);
	//입력/수정/삭제용]	
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
}
