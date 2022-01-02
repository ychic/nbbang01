<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>

<div class="container">
	
	<div class="page-header">
		<h1>데이터베이스 테스트 </h1>
	</div>
	<fieldset>
		<legend>데이터베이스 테스트<span style="color:red;font-size: 1.4em">${message}</span></legend>
		
		<li><a href="<c:url value="/Database/JDBConnection.do?method=JDBC"/>">스프링 JDBC API사용</a></li>
		<li><a href="<c:url value="/Database/JNDIConnection.do?method=JNDI"/>">스프링 JNDI API사용</a></li>
		
		
		
	</fieldset>
	
</div>
