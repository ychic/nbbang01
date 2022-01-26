package com.kosmo.nbbang.vbank.service;

import java.util.Map;

public interface InnerService {

	
	
	//이메일로 bank 테이블 등록이 목적
	public int setAuth(Map map);
	
	
	//이메일으로 fintec or seq 가져오는 것이 목적 
	public Map getAuth(Map map);


	public int deleteToken(Map res);


	public Map test(Map map);
	
	
}
