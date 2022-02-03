package com.kosmo.nbbang.partykang;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partykang.service.MessageDTO;
import com.kosmo.nbbang.partykang.service.PartyChatDTO;
import com.kosmo.nbbang.partykang.service.PartyChatUtil;
import com.kosmo.nbbang.partykang.serviceimpl.PartyServiceImpl;

@SessionAttributes({"email","password"})
@Controller
public class PartyChatController {
	
	@Autowired
	private PartyServiceImpl partyService;
	
	private SimpMessagingTemplate simpMessagingTemplate;

	@Autowired
	public PartyChatController(SimpMessagingTemplate simpMessagingTemplate) {
		this.simpMessagingTemplate = simpMessagingTemplate;
	}
	
	@Autowired
	private ObjectMapper mapper;
	
	// 파티 채팅
	@RequestMapping("/partyChat.do")
	public String partyChat(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		//System.out.println(email);
		if(map.containsKey("partyNo")) {
			if(partyService.chatExist(map) == 0) {
				partyService.createChat(map);
			}
		}
		List<PartyChatDTO> chatList = partyService.getMyChatList(email);
		String myNickName = partyService.getNickName(email);
		List<String> partnerList = new Vector<>();		
		for(PartyChatDTO dto : chatList) {
			String partnerId = email.equals(dto.getParticipant()) ? dto.getBbswriter() : dto.getParticipant();
			String partnerNickname;
			if(partnerId != null)
				partnerNickname = partyService.getNickName(partnerId);
			else {
				partnerNickname = "null";
			}
			System.out.println(partnerNickname);
			partnerList.add(partnerNickname);
		}		
		model.addAttribute("nickname", myNickName);
		model.addAttribute("pnickname", partnerList);
		model.addAttribute("chatList", chatList);
		//return "party/PartyChat.tiles";
		return "party/StompChat.tiles";
	}
	
	@MessageMapping("roomIn/{roomNo}")
	//@SendTo("/topic/message/{roomNo}")
	public void message(MessageDTO message) {
		//return message;		
		simpMessagingTemplate.convertAndSend("/topic/message/"+message.getRoomNo(), message);
	}
	
	@RequestMapping(value = "/message/saveMessage.do", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String saveMessage(@RequestParam String roomNo, @RequestParam String message,HttpServletRequest req) {
		String path=req.getServletContext().getRealPath("/chatList");		
		return PartyChatUtil.saveMessage(path, roomNo, message);
	}
	
	@RequestMapping(value = "/message/getData.do", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String getData(@ModelAttribute("email") String email, @RequestParam String roomNo, @RequestParam String partyNo, HttpServletRequest req) throws JsonProcessingException {
		Map map = new HashMap();
		String path=req.getServletContext().getRealPath("/chatList");		
		String message = PartyChatUtil.getMessage(path, roomNo);
		PartyBbsDTO partyBbs = partyService.getPartyBbs(partyNo);
		PartyChatDTO dto = partyService.getMyChat(roomNo);
		String partnerId = email.equals(dto.getParticipant()) ? dto.getBbswriter() : dto.getParticipant();
		String partnerIsPartyMember = null;
		String isMePartyMember = null;
		if(partnerId != null) {
			partnerIsPartyMember = partyService.getMember(partyNo, partnerId);
			isMePartyMember = partyService.getMember(partyNo, email);
		}
		map.put("partnerIsPartyMember", partnerIsPartyMember);
		map.put("isMePartyMember", isMePartyMember);
		map.put("message", message);
		map.put("partyBbs", partyBbs);
		return mapper.writeValueAsString(map);
	}
	
	@RequestMapping(value = "/roomout/quit.do", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public void quit(@RequestParam Map map, HttpServletRequest req) {
		String path=req.getServletContext().getRealPath("/chatList");
		System.out.println(map.get("roomNo"));
		String command = partyService.quitRoom(map);
		if(command == "delete") {
			System.out.println(PartyChatUtil.deleteMessage(path, map.get("roomNo").toString()));
		}
	}
	
	@RequestMapping(value = "/partybbs/addMember.do", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String addMember(@ModelAttribute("email") String email, @RequestParam Map map) {
		PartyChatDTO dto = partyService.getMyChat(map.get("roomNo").toString());
		String partnerId = email.equals(dto.getParticipant()) ? dto.getBbswriter() : dto.getParticipant();
		map.put("partnerId", partnerId);
		String message = partyService.addMember(map);
		return message;
	}
	
}
