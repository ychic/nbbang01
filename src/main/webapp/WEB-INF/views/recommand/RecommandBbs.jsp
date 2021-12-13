<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="container">
	
	<div class="page-header">
		<h1>RecommandBbs.jsp <small>추천 게시판입니다</small></h1>
	</div>
	<fieldset>
		<legend>ott 카테고리가 들어갈 곳<span style="color:red;font-size: 1.4em">${message}</span></legend>
		
		<h2>게시판 구성할 곳</h2>
		
		<ul>
			<li><a href="<c:url value="/HandlerMapping/BeanNameUrl.do"/>">BeanNameUrlHandlerMapping</a></li>
			<li><a href="<c:url value="/HandlerMapping/Annotation.do"/>">DefaultAnnotationHandlerMapping</a></li>
		</ul>
		
	</fieldset>
	
</div>
