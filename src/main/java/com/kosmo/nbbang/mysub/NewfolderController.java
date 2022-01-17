package com.kosmo.nbbang.mysub;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.park.service.FolderService;

@SessionAttributes({"email"})
@Controller
public class NewfolderController {
	
	//서비스 주입받기
	@Resource(name="folderService")
	private FolderService folderService;
	
	@RequestMapping(value="/mysub/Newfolder.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folder(@RequestParam Map map,@ModelAttribute(value = "email") String email) {
		//String folderName=map.get("folderName");
		
		map.put("email", email);
		
		//db에 저장 서비스 호출
		folderService.insert(map);
		
		
		return map.get("sfname").toString();
	}	//	폴더 생성 전 폴더명 설정
	
	//
	// 생성된 폴더명 수정
	@RequestMapping(value="/mysub/EditFolder1.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folderNameEdit1(@RequestParam Map map) {
		return map.get("dfldrName2").toString();
	}
	@RequestMapping(value="/mysub/EditFolder2.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folderNameEdit2(@RequestParam Map map) {
		return map.get("dfldrName3").toString();
	}
	@RequestMapping(value="/mysub/EditFolder3.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folderNameEdit3(@RequestParam Map map) {
		return map.get("hfldrName1").toString();
	}
	@RequestMapping(value="/mysub/EditFolder4.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folderNameEdit4(@RequestParam Map map) {
		return map.get("hfldrName2").toString();
	}
	@RequestMapping(value="/mysub/EditFolder5.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folderNameEdit5(@RequestParam Map map) {
		return map.get("hfldrName3").toString();
	}
	@RequestMapping(value="/mysub/EditFolder6.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folderNameEdit6(@RequestParam Map map) {
		return map.get("hfldrName4").toString();
	}
	@RequestMapping(value="/mysub/EditFolder7.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folderNameEdit7(@RequestParam Map map) {
		return map.get("hfldrName5").toString();
	}
	
}
