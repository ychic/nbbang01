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
public class PartyController {
	
	@Autowired
	private PartyServiceImpl partyService;
	
	private SimpMessagingTemplate simpMessagingTemplate;

	@Autowired
	public PartyController(SimpMessagingTemplate simpMessagingTemplate) {
		this.simpMessagingTemplate = simpMessagingTemplate;
	}
	
	@Autowired
	private ObjectMapper mapper;
	
	// 파티 채팅
	@RequestMapping("/partyChat.do")
	public String partyChat(@ModelAttribute("email") String email,Model model) {
		//System.out.println("이메일:"+email);
		List<PartyChatDTO> chatList = partyService.getMyChat(email);
		String myNickName = partyService.getNickName(email);
		Map map = new HashMap();		
		for(PartyChatDTO dto : chatList) {
			/*System.out.println(dto.getChatno());
			System.out.println(dto.getPartyno());
			System.out.println(dto.getChatpartnerid());
			System.out.println(dto.getEmail());*/
			String partner = partyService.getNickName(!email.equals(dto.getChatpartnerid()) ? dto.getChatpartnerid() : dto.getEmail());
			//System.out.println(partner);
			map.put(dto.getChatpartnerid(), partner);
		}		
		model.addAttribute("nickname", myNickName);
		model.addAttribute("pnickname", map);
		model.addAttribute("chatList", chatList);
		//return "party/PartyChat.tiles";
		return "party/StompChat.tiles";
		//return "party/springex.tiles";
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
	
	@RequestMapping(value = "/message/getMessage.do", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String getData(@RequestParam String roomNo, @RequestParam String partyNo, HttpServletRequest req) throws JsonProcessingException {
		Map map = new HashMap();
		String path=req.getServletContext().getRealPath("/chatList");		
		String message = PartyChatUtil.getMessage(path, roomNo);
		PartyBbsDTO partyBbs = partyService.getPartyBbs(partyNo);
		map.put("message", message);
		map.put("partyBbs", partyBbs);
		return mapper.writeValueAsString(map);
	}
}
