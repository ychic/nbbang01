package com.kosmo.nbbang.web;

import java.time.Duration;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.Map.Entry;

import org.openqa.selenium.By;
import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.partykang.serviceimpl.PartyServiceImpl;
import com.kosmo.nbbang.service.RecommDTO;
import com.kosmo.nbbang.service.RecommMainService;
import com.kosmo.nbbang.service.impl.MemberServiceImpl;

import io.github.bonigarcia.wdm.WebDriverManager;

@SessionAttributes({"email","password"})
@Controller
public class RecommMainCotroller {
	
	@Autowired
	private RecommMainService recommService;
	
	@Autowired
	private PartyServiceImpl partyService;
	
	//추천 메인
	@RequestMapping("/recommand.do")
	public String recommand(@ModelAttribute("email") String email, Model model) {
		List<String> subList = recommService.getUserSubService();
		List<RecommDTO> reviews = recommService.getReview();
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
		String nickname = partyService.getNickName(email);
//		List<String> ottContent = new Vector<>();
//		WebDriverManager.chromedriver().setup();
//		ChromeOptions options = new ChromeOptions();
//		options.addArguments("headless");
//		options.addArguments("user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36");
//		ChromeDriver driver = new ChromeDriver(options);		
//
//        driver.get("https://m.kinolights.com/ranking/kino");
//        List<WebElement> elements = new WebDriverWait(driver, Duration.ofSeconds(3))
//        		.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath("//*[@id=\"contents\"]/div[2]/div[1]/div/div/ul[2]/li/a/span[1]/span[3]")));
//        for(WebElement element : elements)
//        	ottContent.add(element.getText());
//        driver.quit();        
		model.addAttribute("subs", subs);
		model.addAttribute("nickname", nickname);
		model.addAttribute("reviews", reviews);
//		model.addAttribute("ottContent", ottContent);
		return "recommand/RecommandMain.tiles";
	}
}
