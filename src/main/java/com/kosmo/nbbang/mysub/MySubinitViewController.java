package com.kosmo.nbbang.mysub;

import java.util.Arrays;
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
import org.springframework.web.bind.annotation.SessionAttributes;

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
	//해당계정의 총 구독지출 금액 selectOne 서비스
	
	
	//여기서도 All하드코딩말고 manualService 주입받고 sfno반환하는메소드 써서 개량하면안될까? 01.21
	@RequestMapping("/mysub/mySubinitView.do")	
	public String mysubInit(@ModelAttribute(value = "email") String email,
							@RequestParam(required = false,defaultValue = "All") Map map,Model model) {
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
		 	
		FolderNameDTO folderName=folderNameService.selectOne(map);
		FolderDTO folder=folderService.selectOne(map);
		model.addAttribute("folderName",folderName);
		model.addAttribute("folder",folder);	//리퀘스트영역에 selectOne쿼리 결과 넘겨주기()
		
		return "schedule/MySub.tiles";
	}
	
	@RequestMapping("/mysub/secondFolderView.do")
	public String secondFoldView(@ModelAttribute(value = "email") String email,
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
		
		FolderNameDTO folderName=folderNameService.selectOne(map);
		FolderDTO folder=folderService.selectOne(map);
		//		FolderDTO folder=new FolderDTO();
		//folder.setEmail(email);
		model.addAttribute("folderName",folderName);
		model.addAttribute("folder",folder);	//리퀘스트영역에 selectOne쿼리 결과 넘겨주기()
		System.out.println(model.addAttribute("folder",folder));//
		//
		// 해당계정의 WATCH(두번째폴더)에 해당하는 레코드(등록한 구독 서비스 목록) 읽어오기
		List<SecondFolderDTO> secondRecord=secondFolderService.secondFoldSelectList(map);
		//secondRecord.get(1);	//date타입 변경
		
		
		
		model2.addAttribute("secondRecord",secondRecord);
		
		System.out.println(secondFolderService.secondFoldSelectList(map));
		/*
		 * System.out.println(secondRecord); for(Map test : secondRecord) { Set<String>
		 * keys = test.keySet(); for(String key : keys) {
		 * System.out.println(String.format("key - %s , value = %s",
		 * key,test.get(key).toString())); }
		 * 
		 * }
		 */
		
		return "schedule/MySub2.tiles";
	}
	
	@RequestMapping("/mysub/thirdFolderView.do")
	public String thirdFoldView(@ModelAttribute(value = "email") String email,
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
		
		FolderNameDTO folderName=folderNameService.selectOne(map);
		FolderDTO folder=folderService.selectOne(map);
		//		FolderDTO folder=new FolderDTO();
		//folder.setEmail(email);
		model.addAttribute("folderName",folderName);
		model.addAttribute("folder",folder);	//리퀘스트영역에 selectOne쿼리 결과 넘겨주기()
		System.out.println(model.addAttribute("folder",folder));//
		//
		// 해당계정의 WATCH(두번째폴더)에 해당하는 레코드(등록한 구독 서비스 목록) 읽어오기
		List<SecondFolderDTO> secondRecord=secondFolderService.secondFoldSelectList(map);
		//secondRecord.get(1);	//date타입 변경
		
		
		model2.addAttribute("secondRecord",secondRecord);
		
		System.out.println(secondFolderService.secondFoldSelectList(map));
		
		return "schedule/MySub3.tiles";
	}
	
	
	
	
	
}
