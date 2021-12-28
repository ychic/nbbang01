package com.kosmo.nbbang.mysub;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NewfolderController {
	
	@RequestMapping(value="/mysub/Newfolder.do", produces = "text/plain; charset=UTF-8")
	public @ResponseBody String folder(@RequestParam Map map) {
		//String folderName=map.get("folderName");
		return map.get("folderName").toString();
	}
}
