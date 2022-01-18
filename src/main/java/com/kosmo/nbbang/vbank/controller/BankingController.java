package com.kosmo.nbbang.vbank.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.builder.xml.XMLMapperEntityResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
	
	
	/*
	 * 	Method : callback 이벤트 헨들러 [요청할 필요 X]
	 *  condition :
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON]  - Array 형식 
	 *  issue > 편의를 위해 Rest가 아닌 Controller로 빼놔야할 수도 있음
	 */
	@GetMapping("/callback/url.do")
	public Map getMyCallback(@RequestParam Map map,HttpSession session) {

		//callback Eventhanlder
//		Map res  =bankingservice.setAuthToken(map);
		
		//Test
		String result = "{\r\n"
				+ "    \"access_token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiIxMTAxMDAxNzE1Iiwic2NvcGUiOlsiaW5xdWlyeSIsImxvZ2luIiwidHJhbnNmZXIiXSwiaXNzIjoiaHR0cHM6Ly93d3cub3BlbmJhbmtpbmcub3Iua3IiLCJleHAiOjE2NTAyNTcyNTIsImp0aSI6IjhjZGRkMjkzLTg4NmMtNGUxZi1hMWM1LTliNDU2Yjc2YjM4OCJ9.eZ1hKj56JMQccYAbRsaFes7VT8GeqLld6s6ndyaZ2_E\",\r\n"
				+ "    \"token_type\": \"Bearer\",\r\n"
				+ "    \"refresh_token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiIxMTAxMDAxNzE1Iiwic2NvcGUiOlsiaW5xdWlyeSIsImxvZ2luIiwidHJhbnNmZXIiXSwiaXNzIjoiaHR0cHM6Ly93d3cub3BlbmJhbmtpbmcub3Iua3IiLCJleHAiOjE2NTExMjEyNTIsImp0aSI6Ijg1YzMxMDNjLTFlYjItNGM0ZC05YzE3LTJhZmE3Y2ZkZDIxNyJ9.5hX1mm4jmr5lhwsf4fJuAcKDN9HfFqvHWUT0fTP5rnM\",\r\n"
				+ "    \"expires_in\": 7775999,\r\n"
				+ "    \"scope\": \"inquiry login transfer\",\r\n"
				+ "    \"user_seq_no\": \"1101001715\"\r\n"
				+ "}";
		
		ObjectMapper mapper = new ObjectMapper();
		Map res=null;
		try {
			res = mapper.readValue(result, Map.class);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(res.get("resp_code").equals(ResponeCode.OK)) {
			//dao를 통해 등록해야할 것 > 
//			String email = session.getAttribute(SESSION_UID).toString();
			//Test
			String email = "jsik@naver.com";
			res.put("email", email);

			int affect = innerservice.setAuth(res);
	
		}
		
		return res;
	}
	
	
	/*
	 * 	Method : 전계좌 조회 
	 *  condition : dao에 등록된 사람만 조회 가능
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON]  - Array 형식 
	 *  필수 파라미터 : 사용자 ID
	 */
	@GetMapping("/user/account.do")
	public Map getUserAllaccounts(@RequestParam Map map) {
		
		Map res = innerservice.getAuth(map);
		
		return bankingservice.getUserAccounts(res);
	}
	
	
	/*
	 * 	Method : 계좌 하나 조회 
	 *  condition : dao에 등록된 사람만 조회 가능
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON] - object 형식 
	 *  필수 파라미터 : 사용자 ID, 사용자 fintech
	 */
	@GetMapping("/user/account/{fin_num}")
	public Map getUseraccount(@RequestParam Map map,@PathVariable("fin_num") int  fin_num) {
		
		
		Map res = innerservice.getAuth(map);
		res.put("fintect_use_num", fin_num);
		
		return bankingservice.getUserAccount(map);
	}
	
	
	/*
	 * 	Method : 계좌 거래 내역 조회 
	 *  condition : dao에 등록된 사람만 조회 가능
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON] - Array 형식
	 *  필수 파라미터 : 사용자 ID ,fin_num
	 */
	@GetMapping("/user/account/trading.do")
	public Map getUserTrading(@RequestParam Map map) {
		Map res = innerservice.getAuth(map);
		res.put("fintect_use_num", map.get("fintech_use_num"));
		
		
		return bankingservice.getTradingStatement(res);
	}
	
	
	/*
	 * 	Method : 결제 
	 *  condition : dao에 등록된 사람만 조회 가능
	 *  Scenario : 사용자 전체조회 계좌 요청-> vbankServer 전체 계좌 요청 및 응답 -> 브라우저로 응답[JSON] - resp 코드반환 
	 *  필수 파라미터 : wd_fin > 출금자 , dps_fin > 입금자 아이디
	 */
	@GetMapping("/transfer/fin_num.do")
	public Map getTransaction(@RequestParam Map map,HttpSession session) {
		Map auth = new HashMap();
		auth.put("access_token", session.getAttribute(SESSION_UID));
		auth = innerservice.getAuth(auth);
		
		return bankingservice.doTransactionStatement(auth);
	}
	
	
	
}
