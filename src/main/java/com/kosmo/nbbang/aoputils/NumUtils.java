package com.kosmo.nbbang.aoputils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class NumUtils {
	

	static int counter=0;
	
	/**
	 * 
	 * @param len authCode length
	 * @return authCode(length : len)
	 */
	public static String getNum(int len) {
		
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<len; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }
		
        return numStr;
	}
	
	public static String tranDtime() {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		
		return df.format(new Date()).toString();
		
	}
	
	public static String tranDtime(int beforeDay) {
		
		long beforeSecond = (1000*60*60*24*-1)*beforeDay;
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		
		return df.format(new Date(new Date().getTime()+beforeSecond)).toString();
		
	}
	
	public static String RansTranID() {
		String rn = getNum(2);
		return "M202113785U2BA"+rn+new String().format("%04d", counter++);
	}

	
	
}
