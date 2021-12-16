package com.kosmo.nbbang;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/first.do")
	public String first() {
		return "first";
	}
	@RequestMapping("/index.do")
	public String handlerMapping() {
		return "index.tiles";
	}
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin";
	}
	
	//로그인,로그아웃,회원가입
	@RequestMapping("/login.do")
	public String login() {
		return "auth/login/Login";
	}
	@RequestMapping("/register.do")
	public String register() {
		return "auth/register/Register";
	}
	@RequestMapping("/registerTwo.do")
	public String registerTwo() {
		return "auth/register/RegisterTwo";
	}
	@RequestMapping("/registerThree.do")
	public String registerThree() {
		return "auth/register/RegisterThree";
	}
	
	
	//파티원
	@RequestMapping("/party.do")
	public String party() {
		return "party/PartyMain.tiles";
	}
	@RequestMapping("/partyBbs.do")
	public String partyBbs() {
		return "party/PartyBbs.tiles";
	}
	
	
	
	//my 스케쥴
	@RequestMapping("/schedule.do")
	public String schedule() {
		return "schedule/ScheduleMain.tiles";
	}
	@RequestMapping("/mySub.do")
	public String mySub() {
		return "schedule/MySub.tiles";
	}
	@RequestMapping("/mySchedule.do")
	public String mySchedule() {
		return "schedule/MySchedule.tiles";
	}
	@RequestMapping("/myParty.do")
	public String myParty() {
		return "schedule/MyParty.tiles";
	}
	@RequestMapping("/myReport.do")
	public String myReport() {
		return "schedule/MyReport.tiles";
	}
	
	
	
	//추천
	@RequestMapping("/recommand.do")
	public String recommand() {
		return "recommand/RecommandMain.tiles";
	}
	@RequestMapping("/recommandBbs.do")
	public String recommandBbs() {
		return "recommand/RecommandBbs.tiles";
	}
	
	
	
	
	
	//가이드,qna
	@RequestMapping("/guide.do")
	public String guide() {
		return "guide/GuideMain.tiles";
	}
	
	
	
}//IndexController
