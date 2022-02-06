package com.kosmo.nbbang.myreport.service;

import java.math.BigDecimal;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

/*@Setter
@Getter*/
public class MyReportDTO {
   
   
   private int subno;
   private String subservice;
   private Date paymentday;
   private BigDecimal money;
   private int sfno;
   private String paymentmon;
   private int mondata;
   //매개변수
   private String email;
   private String nickname;
   //저장하는 데이터
   private String yearsum;
   private String monthsum;
   private String weeksum;
   
   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getYearsum() {
      return yearsum;
   }

   public void setYearsum(String yearsum) {
      this.yearsum = yearsum;
   }

   public String getMonthsum() {
      return monthsum;
   }

   public void setMonthsum(String monthsum) {
      this.monthsum = monthsum;
   }

   public String getWeeksum() {
      return weeksum;
   }

   public void setWeeksum(String weeksum) {
      this.weeksum = weeksum;
   }

   public void setSubno(int subno) {
      this.subno = subno;
   }

   public int getSubno() {
      return subno;
   }
   
   public void setChatno(int subno) {
      this.subno = subno;
   }   
   
   public String getSubservice() {
      return subservice;
   }
   public void setSubservice(String subservice) {
      this.subservice = subservice;
   }
   
   public Date getPaymentday() {
       return paymentday;
   }

   public void setPaymentday(Date paymentday) {
       this.paymentday = paymentday;
   }
   
   public BigDecimal getMoney() {
       return money;
   }

   public void setMoney(BigDecimal money) {
       this.money = money;
   }
   
   public int getSfno() {
      return sfno;
   }
   
   public void setSfno(int sfno) {
      this.sfno = sfno;
   }   
   
   public String getPaymentmon() {
      return paymentmon;
   }
   public void setPaymentmon(String paymentmon) {
      this.paymentmon = paymentmon;
   }
   
   public int getMondata() {
      return mondata;
   }
   
   public void setMondata(int mondata) {
      this.mondata = mondata;
   }

   public String getNickname() {
      return nickname;
   }

   public void setNickname(String nickname) {
      this.nickname = nickname;
   }
}