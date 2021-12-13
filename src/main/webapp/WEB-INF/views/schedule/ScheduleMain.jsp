<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="container">
	
	<div class="page-header">
		<h1>스프링 <small>ScheduleMain.jsp</small></h1>
	</div>
	<fieldset>
		<legend>ScheduleMain.jsp   일정 메인 창입니다</legend>
		
		<h2>ScheduleMain.jsp</h2>
		
		<ul>
			<li><a href="<c:url value="/HandlerMapping/BeanNameUrl.do"/>">BeanNameUrlHandlerMapping</a></li>
			<li><a href="<c:url value="/HandlerMapping/Annotation.do"/>">DefaultAnnotationHandlerMapping</a></li>
		</ul>
		
	</fieldset>
	
</div>
