<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="container">
	
	<div class="page-header">
		<h1>스프링 <small>RecommandMain.jsp</small></h1>
	</div>
	<fieldset>
		<legend>RecommandMain.jsp   추천 메인 창입니다</legend>
		
		<h2>RecommandMain.jsp</h2>
		
		<ul>
			<li><a href="<c:url value="/HandlerMapping/BeanNameUrl.do"/>">BeanNameUrlHandlerMapping</a></li>
			<li><a href="<c:url value="/HandlerMapping/Annotation.do"/>">DefaultAnnotationHandlerMapping</a></li>
		</ul>
		
	</fieldset>
	
</div>
