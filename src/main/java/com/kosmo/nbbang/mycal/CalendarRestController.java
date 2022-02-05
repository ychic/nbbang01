package com.kosmo.nbbang.mycal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.mycal.service.CalDTO;
import com.kosmo.nbbang.mycal.service.Impl.CalDAO;
import com.kosmo.nbbang.mycal.service.Impl.CalendarServiceImpl;


@SessionAttributes({"email"})

@RestController
public class CalendarRestController {

	@Autowired
	private CalDAO dao;
	

	@CrossOrigin
	@GetMapping("/calSelect")
	public List<String> selectList(@RequestBody String email,@RequestBody String start){
		Map map = new HashMap();
		map.put("email", email);
		map.put("start", start);
		List<String> members=dao.selectList(map);
		return members;
	}
	   
}
