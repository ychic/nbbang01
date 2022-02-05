package com.kosmo.nbbang.vbank.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.builder.xml.XMLMapperEntityResolver;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.util.MyUtils;
import com.kosmo.nbbang.util.RegularData;
import com.kosmo.nbbang.vbank.service.BankingService;
import com.kosmo.nbbang.vbank.service.InnerService;
import com.kosmo.nbbang.vbank.service.ResponeCode;

@RestController
public class BankingController {

	//CallBack and regust Url
	
	private static final String SESSION_UID ="email";
	
	@Autowired
	BankingService bankingservice;
	@Autowired
	InnerService innerservice;
	@Autowired
	MyUtils myutils;
	
	/*
	 * 
	 * 
	 * 
	 */
	@GetMapping(value="/user/auth.do",produces = {"application/json"})
	public Map getUrl(@RequestParam Map map,HttpSession session) {
		map.put("email", session.getAttribute("email").toString());
		Map<String,String> res = innerservice.getAuth(map);
//		res.put("email", session.getAttribute("email").toString());
		System.out.println(map.get("location"));
		if( res !=null) {
			res.put("location",map.get("location").toString());
			for(Map.Entry<String, String> entry : res.entrySet()) {
				System.out.println(entry.getKey() + " - " + String.valueOf(entry.getValue()));
			}
		}else {
			res = new HashMap<String, String>();
			res.put("location",map.get("location").toString());
		}

		res.put("location",map.get("location").toString());
		
		System.out.println("getUrl메소드 진입");
		System.out.println("res: "+res.get("location"));
		Map test = bankingservice.requestAuthUrl(res);
		System.out.println("도착!");
		return test;
	}
	
	@GetMapping("/test/account.do")
	public String test(@RequestParam Map map) {
		System.out.println(map.get("email"));
		Map data = innerservice.getAuth(map);
		
		Map data2 = innerservice.test(map);
		Set<String> keys =data.keySet();
		
		for(String key : keys) {
			System.out.println(key+ " - " + data.get(key));
		}
		return "ok";
	}
	
	
	
	/* 계좌등록 새창 꺼지고 나서
	 * 	Method : 전계좌 조회 -> db에 저장된 계좌수, ajax로 url(/user/account.do)요청, 요청할 때 이메일만 보내면됨, user_id=이메일
	 *  condition : dao에 등록된 사람만 조회 가능
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON]  - Array 형식 
	 *  필수 파라미터 : 사용자 ID
	 */ 
	@GetMapping("/user/account.do")
	public Map getUserAllaccounts(@RequestParam Map map) {
		
		
		Map res = innerservice.getAuth(map);

	
		return bankingservice.getUserAccounts(res);
	}
	
	
	/*  다른 페이지에 계좌 하나를 보내야 할 때
	 * 	Method : 계좌 하나 조회 
	 *  condition : dao에 등록된 사람만 조회 가능
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON] - object 형식 
	 *  필수 파라미터 :[키 : 벨류] 형식 -> email : 사용자 email, fintech_use_num : 사용자의 해당 fintech 번호,  single : "true" [sigle키값이 넘어갈때는 fintech번호를 무시함] 
	 */
	@GetMapping("/user/account/{fin_num}.do")
	public Map getUseraccount(@RequestParam Map map,@PathVariable("fin_num") String  fin_num) {
		
		System.out.println(map.get("email"));

		System.out.println("=======================fin================= : "+fin_num);

		Map res = innerservice.getAuth(map);
		res.put("fintech_use_num", fin_num);
		Set<String> keys =res.keySet();
		
		for(String key : keys) {
			System.out.println(key+ " - " + res.get(key));
		}
		if(map.get("single")!=null) {
			return bankingservice.getFixedAccount(res);
		}
		return bankingservice.getUserAccount(res);
	}
	
	
	/*
	 * 	Method : 계좌 거래 내역 조회 
	 *  condition : dao에 등록된 사람만 조회 가능
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON] - Array 형식
	 *  필수 파라미터 : 사용자 ID ,fin_num
	 */
	@GetMapping(value="/user/account/trading.do",produces = "application/json; charset=utf8")
	public String getUserTrading(@RequestParam Map map) {
		Map res = innerservice.getAuth(map);
		res.put("fintech_use_num", map.get("fintech_use_num"));
		JSONArray test = bankingservice.getTradingStatement(res);
		System.out.println(test);
		List<RegularData> check =  myutils.getRegularTransaction(test);
		for(RegularData data : check) {
			System.out.println(data.toString());
		}
		return test.toString();
	}
	
	
	/*
	 * 	Method : 결제 
	 *  condition : dao에 등록된 사람만 조회 가능
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON] - resp 코드반환 
	 *  필수 파라미터 : wd_fin : 출금할 사용자 계좌 fintech 번호  , dps_fin : 입금할 사용자 계좌 fintech 번호, cost : 요금 , print : 결제 원인(ex> 넷플릭스 , 왓챠 )
	 */
	@PostMapping(value="/transfer/fin_num.do",produces = "application/json; charset=utf8")
	public Map getTransaction(@RequestBody Map map,HttpSession session) {
		Map auth = new HashMap();
		String wd_fin = map.get("wd_fin").toString();
		String dps_fin = map.get("dps_fin").toString();
		String cost = map.get("cost").toString();
		String print = map.get("print").toString();
		auth.put("access_token", session.getAttribute(SESSION_UID));
		//test
//		auth.put("email", "jsik@naver.com");
		auth = innerservice.getAuth(auth);
		auth.put("wd_fin", wd_fin);
		auth.put("dps_fin", dps_fin);
		auth.put("cost", cost);
		auth.put("print", print);
		return bankingservice.doTransactionStatement(auth);
	}
	
	
}
