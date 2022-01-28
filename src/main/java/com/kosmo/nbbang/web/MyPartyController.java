package com.kosmo.nbbang.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.impl.PartyBbsServiceImpl;
import com.kosmo.nbbang.service.impl.PartyMemberServiceImpl;

@SessionAttributes("email")
@Controller
public class MyPartyController {
	
	// 서비스 주입
	@Autowired
	private PartyBbsServiceImpl partyBbsService;
	
	//내 파티
	@RequestMapping("/myParty.do")
	public String myParty(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		List<PartyBbsDTO> partyBbsList = partyBbsService.getList(email);
		
		model.addAttribute("partyBbsList", partyBbsList);
		return "schedule/MyParty.tiles";
	}
	
} // end MyPartyController