package com.kosmo.nbbang.web;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.nbbang.service.RecommMainService;

@Controller
public class RecommMainCotroller {
	
	@Autowired
	private RecommMainService recommService;
	
	//추천 메인
	@RequestMapping("/recommand.do")
	public String recommand(Model model) {
		List<String> subList = recommService.getUserSubService();
		Map<String, Integer> map = new HashMap<>();
		for(String sub : subList) {
			Integer count = map.get(sub);
			if (count == null) {
			map.put(sub, 1);
			} else {
			map.put(sub, count + 1);
			}
		}
		List<Entry<String, Integer>> subs= new Vector<>(map.entrySet());
		Collections.sort(subs, new Comparator<Entry<String, Integer>>() {
			@Override
			public int compare(Entry<String, Integer> o1, Entry<String, Integer> o2) {
				return o2.getValue()-o1.getValue();
			}
		});
		for(Entry<String,Integer> entry:subs)
			System.out.println(entry.getKey()+ " : "+entry.getValue());
		model.addAttribute("subs", subs);
		return "recommand/RecommandMain.tiles";
	}
}
