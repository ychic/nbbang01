package com.kosmo.nbbang;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberServiceImpl adminMemberService;
	
	@RequestMapping("/adminmember.do")
	public String adminMember(Model model) {
		List<AdminMemberDTO> list = adminMemberService.selectAllMember();
		for(AdminMemberDTO dto : list) {
			System.out.println(dto.getEmail());
			System.out.println(dto.getAuthority());
			System.out.println(dto.getNickname());
			System.out.println(dto.getName());
			System.out.println(dto.getRegistdate());
			System.out.println(dto.getTel());
		}
		return "admin/AdminMember";
	}
}
