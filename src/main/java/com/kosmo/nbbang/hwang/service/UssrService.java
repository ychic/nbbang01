package com.kosmo.nbbang.hwang.service;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public interface UssrService {

	boolean isLogin(Map map);
	ListPagingData<UssrDTO> selectList(Map map,HttpServletRequest req,int nowPage);
	UssrDTO selectOne(Map map);
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
}
