package com.kosmo.nbbang.vbank.controller;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.vbank.service.BankingService;
import com.kosmo.nbbang.vbank.service.InnerService;
import com.kosmo.nbbang.vbank.service.ResponeCode;

@Controller
public class BankingCallbackController {

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
		@GetMapping(value = "/callback/url.do")
		@ResponseBody
		public String getMyCallback(@RequestParam Map<String,String> map,HttpSession session) {
			
			for(Map.Entry<String, String> entry : map.entrySet()) {
				System.out.println(entry.getKey()+" - " + entry.getValue());
			}
			
			
			
			//callback Eventhanlder
			Map res  =bankingservice.setAuthToken(map);
			
			//Test
//			String result = "{\r\n"
//					+ "    \"access_token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiIxMTAxMDAxNzE1Iiwic2NvcGUiOlsiaW5xdWlyeSIsImxvZ2luIiwidHJhbnNmZXIiXSwiaXNzIjoiaHR0cHM6Ly93d3cub3BlbmJhbmtpbmcub3Iua3IiLCJleHAiOjE2NTAyNTcyNTIsImp0aSI6IjhjZGRkMjkzLTg4NmMtNGUxZi1hMWM1LTliNDU2Yjc2YjM4OCJ9.eZ1hKj56JMQccYAbRsaFes7VT8GeqLld6s6ndyaZ2_E\",\r\n"
//					+ "    \"token_type\": \"Bearer\",\r\n"
//					+ "    \"refresh_token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiIxMTAxMDAxNzE1Iiwic2NvcGUiOlsiaW5xdWlyeSIsImxvZ2luIiwidHJhbnNmZXIiXSwiaXNzIjoiaHR0cHM6Ly93d3cub3BlbmJhbmtpbmcub3Iua3IiLCJleHAiOjE2NTExMjEyNTIsImp0aSI6Ijg1YzMxMDNjLTFlYjItNGM0ZC05YzE3LTJhZmE3Y2ZkZDIxNyJ9.5hX1mm4jmr5lhwsf4fJuAcKDN9HfFqvHWUT0fTP5rnM\",\r\n"
//					+ "    \"expires_in\": 7775999,\r\n"
//					+ "    \"scope\": \"inquiry login transfer\",\r\n"
//					+ "    \"user_seq_no\": \"1101001715\"\r\n"
//					+ "}";
//			
//			ObjectMapper mapper = new ObjectMapper();
//			Map res=null;
//			try {
//				res = mapper.readValue(result, Map.class);
//			} catch (JsonMappingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (JsonProcessingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			Set<String> keys = res.keySet();
			for(String key : keys) {
				System.out.println(key+" - " + res.get(key));
			}
			
			
			if(res.get("resp_code").toString().equals(ResponeCode.OK)) {
				//dao를 통해 등록해야할 것 > 
				String email = session.getAttribute(SESSION_UID).toString();
				System.out.println("Email:" +email);
				//Test
//				String email = "jsik@naver.com";
				res.put("email", email);
				int remove = innerservice.deleteToken(res);
				int affect = innerservice.setAuth(res);
		
			}
			

			return "<script>"
					+ "\n opener.getAccount()\n"
					+ "opener.tmpWindow.close()</script>";

		}
		
}
