package com.kosmo.nbbang.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
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
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : partyBbsList) {
			map.put("partyNo", dto.getPartyNo());
			System.out.println("dto.getPartyNo() : " + dto.getPartyNo());
			System.out.println(dto.getPartyCategoryName());
			
			System.out.println("파티 매치 날짜 : " + dto.getPartyMatchdate());
			
			if (dto.getPartyMatchdate() != null) {
		        Calendar cal = Calendar.getInstance();
		        cal.setTime(new Date(dto.getPartyMatchdate().getTime()));
		        cal.add(Calendar.MONTH,6);
		        java.sql.Date endDate = new java.sql.Date(cal.getTimeInMillis());
		        dto.setEndDate(endDate);
		        System.out.println(endDate);
			}
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			System.out.println("count : " + count);
			dto.setCount(count);
			temp.add(dto);
		}
		model.addAttribute("partyBbsList", temp);
		return "schedule/MyParty.tiles";
	}
	
	// 파티 결제 테스트 페이지 - 스케줄러
	@RequestMapping("/party.do")
	public String party(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		List<PartyBbsDTO> partyAllList = partyBbsService.getPartyAllList(map);
		for (PartyBbsDTO dto : partyAllList) {
			if (dto.getPartyMatchdate() != null) { // 파티 모집이 마감이 됐으면
				System.out.println("=파티 모집이 마감이 된 멤버만 출력=");
		        Calendar cal = Calendar.getInstance();
		        cal.setTime(new Date(dto.getPartyMatchdate().getTime()));
		        cal.add(Calendar.MONTH,6);
		        java.sql.Date endDate = new java.sql.Date(cal.getTimeInMillis());
		        dto.setEndDate(endDate);
		        Date date = new Date();
		        if (date.before(endDate)) { // 오늘날짜가 endDate보다 이후면 파티삭제 하기
		        	System.out.println("오늘날짜가 endDate보다 이전이면");
		        	if (dto.getPartyLeader().equals("n")) { // 파티멤버가 리더가 아니라면
		        		System.out.println("파티 멤버가 리더가 아닌사람만(\"n\") 결제하기");
		        		System.out.println("dto.getPmMember : " + dto.getPmMember() + "는 리더인가 디비의 저장 값? : " + dto.getPartyLeader() + ", n이면 리더가 아님.");
		        		System.out.println("dto.getPmMember : " + dto.getPmMember() + "가 속한 파티의 최대 인원수 ? : " + dto.getPartyMaxCapacity());
		        		int partyMaxCapacity = Integer.parseInt(dto.getPartyMaxCapacity()); // 최대 인원수 인트로 변환
		        		int partyAllotmentPrice = Integer.parseInt(dto.getPartyAllotmentPrice()); // 가격 인트로 변환
		        		System.out.println(dto.getPmMember() + "가 결제할 금액 : " + (partyAllotmentPrice / partyMaxCapacity) + "원");
		        	} else {
		        		System.out.println("리더는 아무런 행동을 안함.");
		        		System.out.println("dto.getPmMember : " + dto.getPmMember() + "는 리더인가 디비의 저장 값? : " + dto.getPartyLeader() + ", n이면 리더가 아님.");
		        		System.out.println("dto.getPmMember : " + dto.getPmMember() + "가 속한 파티의 최대 인원수 ? : " + dto.getPartyMaxCapacity());
		        	}
		        	System.out.println("===============================================================");
		        } else { // 오늘날짜가 endDate보다 이후면 파티삭제 하기
		        	System.out.println("오늘날짜가 endDate보다 이후면 파티삭제 하기");
		        }
			}
		}
		return "party/party.tiles";
	}
} // end MyPartyController