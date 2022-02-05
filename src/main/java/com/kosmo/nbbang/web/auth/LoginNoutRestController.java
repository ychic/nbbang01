package com.kosmo.nbbang.web.auth;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.support.SessionStatus;

import com.kosmo.nbbang.park.join.DefLifeDTO;
import com.kosmo.nbbang.park.join.DefWatchDTO;
import com.kosmo.nbbang.park.join.DefaultDTO;
import com.kosmo.nbbang.park.join.JoinFormCommand;
import com.kosmo.nbbang.park.service.DefLifeService;
import com.kosmo.nbbang.park.service.DefWatchService;
import com.kosmo.nbbang.park.service.DefaultService;
import com.kosmo.nbbang.park.service.JoinService;
import com.kosmo.nbbang.park.service.impl.DefLifeServiceImpl;
import com.kosmo.nbbang.park.service.impl.JoinServiceImpl;
import com.kosmo.nbbang.service.MemberDTO;
import com.kosmo.nbbang.service.impl.MemberServiceImpl;
import com.kosmo.nbbang.util.RegularData;

@RestController
public class LoginNoutRestController {

	
	//서비스 주입받기
	@Resource(name="joinService")
	private JoinServiceImpl joinService;
	
	@Resource(name="defaultService")
	private DefaultService defaultService;

	@Resource(name="defWatchService")
	private DefWatchService defWatchService;
	
	@Resource(name = "defLifeService")
	private DefLifeServiceImpl defLifeService;
	
	
	@Resource(name = "memberService")
	private MemberServiceImpl memberService;
	//social login
	
	@GetMapping(value ="/rest/sociallogin.do",produces = "application/json;charset=utf-8")
	public String socialaccess(@RequestParam Map map) {
		JSONObject result = new JSONObject();
		if(map.get("email") != null) {
			int flag = 0;
			
			flag = memberService.socialLogin(map);
			
			Set<String> keys = map.keySet();
			for (String key : keys) {
				System.out.println(key+" = " + map.get(key));
			}
			
			if(flag ==1) {
				result.put("resp_code", "success");
				return result.toString();
			}
			
		}
		result.put("resp_code", "실패");
		return result.toString();
	}
	
	@PostMapping(value ="/rest/genlogin.do",produces = "application/json;charset=utf-8")
	public String generalLogin(@RequestBody Map map) {
		JSONObject result = new JSONObject();
		if(map.get("email") != null) {
			int flag = 0;
			
			flag = memberService.isLogin(map);
			System.out.println("뭐야이거"+flag);
			Set<String> keys = map.keySet();
			for (String key : keys) {
				System.out.println(key+" = " + map.get(key));
			}
			
			if(flag ==1) {
				result.put("resp_code", "success");
				return result.toString();
			}
			
		}
		result.put("resp_code", "실패");
		return result.toString();
	}
	

	//회원가입 
	@PostMapping(value="/rest/sign.do",produces = "application/json; charset=utf8")
	public String socialSignUp(@RequestBody Map map) {
		/*
		 * #{email},#{password, jdbcType=VARCHAR},#{name},#{nickname},#{birthdate},#{gender},#{tel},#{usertype, jdbcType=CHAR},
		#{preference, jdbcType=VARCHAR}, #{authority, jdbcType=VARCHAR},SYSDATE,#{oringinprofile, jdbcType=VARCHAR},null)
		 */
		
		if(map.get("password")==null) {
			map.put("password", null);
		}else if(map.get("password").toString().isEmpty()) {
			map.put("password", null);
		}
		if(map.get("usertype")==null) {
			map.put("usertype", null);
		}
		
		JSONObject result = new JSONObject();
		map.put("authority", "nomarl");
		map.put("oringinprofile", "profile_image.png");
		map.put("profile",null);
		
		Set<String> keys = map.keySet();
		for (String key : keys) {
			System.out.println(key+" = " + map.get(key));
		}
		System.out.println(map.get("preference").toString());
		
		DefaultDTO dfcmd = new DefaultDTO();
		DefWatchDTO dfcmd2 = new DefWatchDTO();
		DefLifeDTO dfcmd3 = new DefLifeDTO();
		
		dfcmd.setAll("All");
		dfcmd.setEmail(map.get("email").toString());
		dfcmd2.setWatch("Watch");
		dfcmd2.setEmail(map.get("email").toString());
		dfcmd3.setLife("Life");
		dfcmd3.setEmail(map.get("email").toString());
//		
		map.put("preference",map.get("preference").toString());
//		//서비스호출
		
		try {

			joinService.memberInsert(map); 			//memberInsert(map) map -> email, password, ~,~ ,~ 
			defaultService.defaultInsert(dfcmd);	//
			defWatchService.defWatchInsert(dfcmd2);
			defLifeService.defLifeInsert(dfcmd3);
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			result.put("resp_code", "fail");
			return result.toString();
		}
		
		result.put("resp_code", "success");
		return result.toString();
	}
	
	
	
	@GetMapping(value="/rest/memberInfo.do",produces = "application/json; charset=utf8")
	public String getMemeberInfo(@RequestParam Map map) {
		MemberDTO res = joinService.getMemeberInfo(map);
		return new JSONObject(res).toString();
	}
	
	
	
	
	
}
