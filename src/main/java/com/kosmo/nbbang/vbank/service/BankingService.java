package com.kosmo.nbbang.vbank.service;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public interface BankingService {

	
	/*
	 * 	Author : 정윤식
	 * 	content : 계좌 등록 및 이체 조회에 관련된 서비스 interface
	 * 
	 */
	
	//등록
	public Map requestAuthUrl(Map map);

	public Map setAuthToken(Map map);

	
	//조회
	
	public Map getUserAccounts(Map map);
	
	public Map getUserAccount(Map map);
	
	public JSONArray getTradingStatement(Map map);
	
	
	//거래
	@Transactional
	public Map doTransactionStatement(Map map);
}
