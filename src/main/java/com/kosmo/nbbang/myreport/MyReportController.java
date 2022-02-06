package com.kosmo.nbbang.myreport;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.myreport.service.MyReportDTO;
import com.kosmo.nbbang.myreport.service.impl.MyReportServiceImpl;


@SessionAttributes({"email","nickname"})
@Controller
public class MyReportController {
   
   //주입
   @Autowired
   private MyReportServiceImpl myReportService;

   //막대 점차트 MY 리포트
   @RequestMapping("/myReport.do")
   public String myReport2(@ModelAttribute("email") String email,@ModelAttribute("nickname") String nickname,Model model, Map map) {
      System.out.println("테스트11111");
      List<MyReportDTO> myReportList2 = myReportService.getMyReport2(map);
      model.addAttribute("myReportList2", myReportList2);
      return "forward:/myReport2.do";
   }
   
   //그외 MY 리포트
   @RequestMapping("/myReport2.do")
   public String myReport(@ModelAttribute("email") String email,@ModelAttribute("nickname") String nickname, Map map, Model model) throws JsonProcessingException {
      System.out.println("테스트22222");
      System.out.println("map:"+map);
      System.out.println(map.get("email"));
      List<MyReportDTO> myReportList = myReportService.getMyReport(map);
      //List<MyReportDTO> myReportList2 = myReportService.getMyReport(map);
      MyReportDTO yearSum = myReportService.getYearSum(map);
      MyReportDTO monthSum = myReportService.getMonthSum(map);
      MyReportDTO weekSum = myReportService.getWeekSum(map);
      List<MyReportDTO> subservice = myReportService.getMyReport3(map);
      for(MyReportDTO dto : myReportList) {
         
         System.out.println("########################");
         System.out.println(dto.getSubno());
         System.out.println(dto.getSubservice());
         System.out.println(dto.getPaymentday());
         System.out.println(dto.getMoney());
         System.out.println(dto.getSfno());
         System.out.println(dto.getPaymentmon());
         System.out.println("########################");

      }
      List<String> list = new Vector<String>();
      for(MyReportDTO dto : subservice) {
    	  list.add(dto.getSubservice());
      }
      System.out.println(list.toString());
      System.out.println(nickname);
      model.addAttribute("email", email);
      model.addAttribute("nickname", nickname);
      model.addAttribute("myReportList", myReportList);
      if(subservice !=null) 
    	  model.addAttribute("subservice", list.toString());
       
      //System.out.println("weekSum"+weekSum.getWeeksum());
      
      if(yearSum != null)
         model.addAttribute("yearSum", yearSum.getYearsum());
      if(monthSum != null)
         model.addAttribute("monthSum", monthSum.getMonthsum());
      if(weekSum != null)
         model.addAttribute("weekSum", weekSum.getWeeksum());
      
      
      return "schedule/MyReport.tiles";
      //schedule/MyReport.tiles
   }
}