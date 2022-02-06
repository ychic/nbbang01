package com.kosmo.nbbang.mysub;


import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.park.service.impl.AllCostServiceImpl;
import com.kosmo.nbbang.park.service.impl.FolderCostServiceImpl;
import com.kosmo.nbbang.park.service.impl.FolderNameServiceImpl;
import com.kosmo.nbbang.park.service.impl.FolderServiceImpl;
import com.kosmo.nbbang.park.service.impl.ManualServiceImpl;
import com.kosmo.nbbang.park.service.impl.SecondFolderServiceImpl;

@SessionAttributes({"email"})
@Controller
public class MySubinitViewController {
	//서비스 주입
	//리퀘스트영역에 selectOne쿼리 결과 넘겨주려고
	@Resource(name = "folderService")
	private FolderServiceImpl folderService;
	//sfno 파라미터 값 구하기(서비스호출-manualService)
	@Resource(name = "manualService")
	private ManualServiceImpl sfnosService;
	//secondFoldSelectList 넘겨주기
	@Resource(name = "secondFolderService")
	private SecondFolderServiceImpl secondFolderService;
	//폴더이름 selectOne (sfno로)
	@Resource(name = "folderNameService")
	private FolderNameServiceImpl folderNameService;
	//해당계정의 총(All) 구독지출 금액 selectOne 서비스
	@Resource(name = "allCostService")
	private AllCostServiceImpl allCostService;
	//해당계정의 폴더별 구독지출 금액(Watch / Life) selectOne 서비스
	@Resource(name = "folderCostService")
	private FolderCostServiceImpl folderCostService; 
	//edit 서비스
	
	
	
	//여기서도 All하드코딩말고 manualService 주입받고 sfno반환하는메소드 써서 개량하면안될까? 01.21
	@RequestMapping("/mysub/mySubinitView.do")	
	public String mysubInit(@ModelAttribute(value = "email") String email,
							@RequestParam(required = false,defaultValue = "All") Map map,Model model,
							MySubFldrCountDTO watchCmd, MySubFldrCountDTO lifeCmd) {
		//서비스호출
		//초기화면에 All폴더에 해당하는 구독서비스 뿌려주는 서비스
		//map.put("sfname", "All");	//다른방법찾기
		map.put("email", email);
		
		List sfnoss=sfnosService.selectList(map);
		//System.out.println("sfnosService.selectList(map):"+sfnosService.selectList(map));
		String strSfnoss=sfnoss.get(0).toString(); //"{SFNO=98}"
		strSfnoss=strSfnoss.replace("{", ""); 
		strSfnoss=strSfnoss.replace("SFNO=","");
		strSfnoss=strSfnoss.replace("}", "");// "98"
		int sfnoInt = Integer.parseInt(strSfnoss);
		map.put("sfno", sfnoInt); //sfno파라미터 전달완료
		
		//(watch에 저장된 구독가져오기)
		int sfnoForWatchFolder = Integer.parseInt(strSfnoss)+1;
		watchCmd.setEmail(email);
		watchCmd.setSfnoW(sfnoForWatchFolder);
		//(life에 저장된 구독가져오기)
		int sfnoForLifeFolder = Integer.parseInt(strSfnoss)+2;
		lifeCmd.setEmail(email);
		lifeCmd.setSfnoL(sfnoForLifeFolder);
		
		 	
		FolderNameDTO folderName=folderNameService.selectOne(map);
		FolderDTO folder=folderService.selectOne(map);
		AllCostDTO allCost=allCostService.selectOne(map);
		BadgeAllCountDTO badgeAll=folderService.allfldrSelectOne(map);
		BadgeAllCountDTO mysubBadgeWatch=folderService.mysubWatchfldrSelectOne(watchCmd);	//mysub페이지에 watch 카운트가져오기
		BadgeAllCountDTO mysubBadgeLife=folderService.mysubLifefldrSelectOne(lifeCmd);	//mysub페이지에 life 카운트가져오기
		
		
		
		model.addAttribute("allCost",allCost);
		model.addAttribute("folderName",folderName);
		model.addAttribute("folder",folder);	//리퀘스트영역에 selectOne쿼리 결과 넘겨주기()
		model.addAttribute("badgeAll",badgeAll);
		model.addAttribute("mysubBadgeWatch",mysubBadgeWatch);	//dto에 저장된 watch카운트 모델에저장
		model.addAttribute("mysubBadgeLife",mysubBadgeLife);	//dto에 저장된 life카운트 모델에저장
		
		return "schedule/MySub.tiles";
	}////////////////////////////////////////////////////////All
	
	@RequestMapping("/mysub/secondFolderView.do")
	public String secondFoldView(@ModelAttribute(value = "email") String email, MySubFldrCountDTO lifeCmd,
								@RequestParam Map map, Model model, Model model2) {
		map.put("email", email);
		//sfno 파라미터 값 구하기(서비스호출-manualService)
		
		List sfnoss=sfnosService.selectList(map);
		System.out.println("sfnosService.selectList(map):"+sfnosService.selectList(map));
		String strSfnoss=sfnoss.get(1).toString();	//"{SFNO=98}"
		strSfnoss=strSfnoss.replace("{", "");
		strSfnoss=strSfnoss.replace("SFNO=", "");
		strSfnoss=strSfnoss.replace("}", "");	// "98"
		int sfnoInt = Integer.parseInt(strSfnoss);
		map.put("sfno", sfnoInt);	//sfno파라미터 전달완료
		
		//(life에 저장된 구독가져오기)
		int sfnoForLifeFolder = Integer.parseInt(strSfnoss)+1;
		lifeCmd.setEmail(email);
		lifeCmd.setSfnoL(sfnoForLifeFolder);
				
		FolderNameDTO folderName=folderNameService.selectOne(map);
		FolderDTO folder=folderService.selectOne(map);
		FolderCostDTO folderCost=folderCostService.selectOne(map);
		BadgeAllCountDTO badgeAll=folderService.allfldrSelectOne(map);
		BadgeAllCountDTO fldrCount=folderService.eachfldrSelectOne(map);
		BadgeAllCountDTO mysubBadgeLife=folderService.mysubLifefldrSelectOne(lifeCmd);	//mysub페이지에 life 카운트가져오기
		
		//		FolderDTO folder=new FolderDTO();
		//folder.setEmail(email);
		model.addAttribute("folderName",folderName);
		model.addAttribute("folder",folder);	//리퀘스트영역에 selectOne쿼리 결과 넘겨주기()
		model.addAttribute("folderCost",folderCost);	//watch폴더 서비스의 총액
		model.addAttribute("badgeAll",badgeAll);
		model.addAttribute("fldrCount",fldrCount);
		System.out.println(model.addAttribute("folder",folder));//
		//
		// 해당계정의 WATCH(두번째폴더)에 해당하는 레코드(등록한 구독 서비스 목록) 읽어오기
		List<SecondFolderDTO> secondRecord=secondFolderService.secondFoldSelectList(map);
		//secondRecord.get(1);	//date타입 변경
		
		model2.addAttribute("secondRecord",secondRecord);
		model.addAttribute("mysubBadgeLife",mysubBadgeLife);	//dto에 저장된 life카운트 모델에저장
		
		System.out.println(secondFolderService.secondFoldSelectList(map));
		
		return "schedule/MySub2.tiles";
	}////////////////////////////////////////////////////////Watch
	
	@RequestMapping("/mysub/thirdFolderView.do")
	public String thirdFoldView(@ModelAttribute(value = "email") String email, MySubFldrCountDTO watchCmd,
								@RequestParam Map map, Model model, Model model2) {
		map.put("email", email);
		//sfno 파라미터 값 구하기(서비스호출-manualService)
		
		List sfnoss=sfnosService.selectList(map);
		System.out.println("sfnosService.selectList(map):"+sfnosService.selectList(map));
		String strSfnoss=sfnoss.get(2).toString();	//"{SFNO=98}"
		strSfnoss=strSfnoss.replace("{", "");
		strSfnoss=strSfnoss.replace("SFNO=", "");
		strSfnoss=strSfnoss.replace("}", "");	// "98"
		int sfnoInt = Integer.parseInt(strSfnoss);
		map.put("sfno", sfnoInt);	//sfno파라미터 전달완료
		
		//(watch에 저장된 구독가져오기)
		int sfnoForWatchFolder = Integer.parseInt(strSfnoss)-1;
		watchCmd.setEmail(email);
		watchCmd.setSfnoW(sfnoForWatchFolder);
		
		FolderNameDTO folderName=folderNameService.selectOne(map);
		FolderDTO folder=folderService.selectOne(map);
		FolderCostDTO folderCost=folderCostService.selectOne(map);
		BadgeAllCountDTO badgeAll=folderService.allfldrSelectOne(map);
		BadgeAllCountDTO fldrCount=folderService.eachfldrSelectOne(map);
		BadgeAllCountDTO mysubBadgeWatch=folderService.mysubWatchfldrSelectOne(watchCmd);	//mysub페이지에 watch 카운트가져오기
		//		FolderDTO folder=new FolderDTO();
		//folder.setEmail(email);
		model.addAttribute("folderName",folderName);
		model.addAttribute("folder",folder);	//리퀘스트영역에 selectOne쿼리 결과 넘겨주기()
		model.addAttribute("folderCost",folderCost);	//watch폴더 서비스의 총액
		model.addAttribute("badgeAll",badgeAll);
		model.addAttribute("fldrCount",fldrCount);
		model.addAttribute("mysubBadgeWatch",mysubBadgeWatch);	//dto에 저장된 watch카운트 모델에저장
		
		System.out.println(model.addAttribute("folder",folder));//
		//
		// 해당계정의 WATCH(두번째폴더)에 해당하는 레코드(등록한 구독 서비스 목록) 읽어오기
		List<SecondFolderDTO> secondRecord=secondFolderService.secondFoldSelectList(map);
		//secondRecord.get(1);	//date타입 변경
		
		
		model2.addAttribute("secondRecord",secondRecord);
		
		System.out.println(secondFolderService.secondFoldSelectList(map));
		
		return "schedule/MySub3.tiles";
	}
	//
	@RequestMapping("/fourthFold.do")
	public String fourthFoldView(@ModelAttribute(value = "email") String email, MySubFldrCountDTO watchCmd,
			@RequestParam Map map, Model model, Model model2) {
		map.put("email", email);
		
		
		return "schedule/MySub4.tiles";
	}
	///
	//계좌에서 긁어온 정기지출총액 모델에 저장해서 넘겨주기
	@RequestMapping(value="mysub/getMoneyVar.do", produces = "application/json; charset=UTF-8")	//"text/plain; charset=UTF-8"
	public @ResponseBody int getMoneyVar(@RequestParam Map map, Model model) {
		
		int intMoney=Integer.parseInt(map.get("sumMoney").toString());
		System.out.println(intMoney);
		model.addAttribute("intMoney",intMoney);
		return intMoney;
		//return map.get("sfname").toString();
	}
	
	
	
	
	
	@RequestMapping("/mysub/edit.do")
	public String edit(@ModelAttribute(value = "email") String email,@RequestParam Map map, EditSubDTO cmdEdit, Model model) {
		map.put("email", email);	//map으로 이메일 넘김
		List sfnos=sfnosService.selectList(map);	// 넘긴이메일론 해당계정 폴더3개 가져와서 리스트에담아둠
		
		String selectedFolderName=map.get("folderSelect").toString();
		String strSfNo;
		int selectedsfNo=0;
		if(selectedFolderName.contains("Watch")) {	//만약에 폴더추가할거면 수정해야함...현재 하드코딩("Watch")되어있어서.
			strSfNo=sfnos.get(1).toString();	//"{SFNO=98}"
			strSfNo=strSfNo.replace("{", "");
			strSfNo=strSfNo.replace("SFNO=", ""); 
			strSfNo=strSfNo.replace("}", "");
			//"98"
			selectedsfNo=Integer.parseInt(strSfNo);	//98
		}
		else {			//만약에 폴더추가할거면 수정해야함...현재 하드코딩되어있어서.else if로 바꾸고 else추가..
			strSfNo=sfnos.get(2).toString();
			strSfNo=strSfNo.replace("{", "");
			strSfNo=strSfNo.replace("SFNO=", ""); 
			strSfNo=strSfNo.replace("}", "");
			//"98"
			selectedsfNo=Integer.parseInt(strSfNo);
		}
		cmdEdit.setSfno(selectedsfNo);
		//int watchNo=Integer.parseInt(sfnos.get(1).toString());

		
		//처음부터 dto에 받지를 못해서 에러남. replace()가 사실 불필요
		String money1=map.get("money").toString();	//16,000원
		money1 = money1.replace(",", "");	//16000원
		String money = money1.replace("원", "");
		cmdEdit.setMoney(Integer.parseInt(money));
		
		
		String orimoney1=map.get("orimoney").toString();	//16,000원
		orimoney1 = orimoney1.replace(",", "");	//16000원
		String orimoney = orimoney1.replace("원", "");
		cmdEdit.setOrimoney(Integer.parseInt(orimoney));
		
		String strOrisfno=map.get("orisfno").toString();
		cmdEdit.setOrisfno(Integer.parseInt(strOrisfno));
		
		
		//**** sfno 세팅할때 폴더명(넘어온)에 따른 분기!
		//String watch=map.get("Watch").toString();
		//String life=map.get("Life").toString();
		
		//cmd.setMoney(Integer.parseInt(map.get("money").toString()));
		sfnosService.update(cmdEdit);
		
		return "forward:/mysub/mySubinitView.do";
	}
	
	@RequestMapping("/mysub/delete.do")
	public String delete(@ModelAttribute(value = "email") String email,@RequestParam Map map,Model model) {
		sfnosService.delete(map);
		return "forward:/mysub/mySubinitView.do";
	}
	
	
	
}
