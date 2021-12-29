package com.kosmo.nbbang.database;

import java.sql.Connection;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DatabaseController {
	
	@Resource(name="datasourceByJDBC")
	private DataSource jdbc;
	
	@Resource(name="datasourceByJNDI")
	private DataSource jndi;
	
	
	
	@RequestMapping("/Database/JDBConnection.do")
	public String jdbc(Model model) throws SQLException {
		
		//주입받은 객체로 getConnection()
		Connection conn = jdbc.getConnection();
		
		//데이터 저장 (conn 객체 null 체크)
		model.addAttribute("message", conn==null?"[디비 연결 실패]":"[연결 성공]");
		
		//메모리 해제
		if(conn!=null) conn.close();
		
		return "schedule/DBTest.tiles";
	}
	
	
	
	//커넥션 풀 사용
	@RequestMapping("/Database/JNDIConnection.do")
	public String jndi(Model model) throws SQLException {

		//주입받은 객체로 getConnection()
		Connection conn = jndi.getConnection();
		
		//데이터 저장 (conn 객체 null 체크)
		model.addAttribute("message", conn==null?"[디비 연결 실패]":"[연결 성공]");
		
		//메모리 해제
		if(conn!=null) conn.close();
		
		
		return "schedule/DBTest.tiles";
	}
}
