package com.kosmo.nbbang.park.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.park.service.impl.ManualServiceImpl;

@SessionAttributes({"email"})
@Controller
public class ManualController {
	
	@Resource(name = "manualService")
	private ManualServiceImpl manualService;	
	
	@RequestMapping("manual.do")
	public String manual(@RequestParam Map map, SubManualDTO cmd,
						@ModelAttribute(value = "email") String email) {
		//sfno받아올때 필요
		map.put("email", email);
		List sfnos=manualService.selectList(map);
		
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

		//int watchNo=Integer.parseInt(sfnos.get(1).toString());

		
		//처음부터 dto에 받지를 못해서 에러남. replace()가 사실 불필요
		String money1=map.get("money").toString();	//16,000원
		money1 = money1.replace(",", "");	//16000원
		String money = money1.replace("원", "");
		cmd.setMoney(Integer.parseInt(money));
		
		//**** sfno 세팅할때 폴더명(넘어온)에 따른 분기!
		//String watch=map.get("Watch").toString();
		//String life=map.get("Life").toString();
		
		//cmd.setMoney(Integer.parseInt(map.get("money").toString()));
		cmd.setSfno(selectedsfNo);	//지금 sub@sub.sub계정의 All폴더에 전부 insert되는중 ->//해당계정에서 선택한 폴더로 insert //해당계정의 All폴더에 insert시켜야함
		// 해당유저의 폴더List를 SelectList해와서 Watch -> sfno
		
		//서비스호출
		manualService.manualInsert(cmd);
		//인서트 후에 초기화면보여주기
		
		return "forward:/mysub/mySubinitView.do"; //?sfname=All
	}
}
