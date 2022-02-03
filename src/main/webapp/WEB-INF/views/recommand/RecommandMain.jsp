<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	</div>
</header>
<!--  
<script>
	$(function() {
		$('body').css('backgroundColor', '#F69E8F');
		$('footer').css('backgroundColor', '#F69E8F');
	});
</script>
-->
<div class="container" style="height: 730px; padding-top: 25px;">
	<div class="row">
		<h1>
			구독 추천 메인페이지
			<small>
				<a class="btn btn-primary" href='<c:url value="/recommandBbs.do"/>' role="button" style="margin-left: 5px; margin-bottom: 9px;"> 추천게시판 </a>
			</small>
			<small>
				<a class="btn btn-info" href='<c:url value="/freeBbs.do"/>' role="button" style="margin-left: 5px; margin-bottom: 9px;"> 자유게시판 </a>
			</small>
		</h1>
		<p>
			ㅇㄴㅁㅇㅁㄴ
			
		</p>
		
		
	</div>
	<!-- Example row of columns -->
	<div class="row">
		<div class="col-md-4" style="padding: 0;">
			<h2>사이트 이용자 가입 서비스 TOP10</h2>
			<ul style="color: black;">
				<c:forEach items="${subs}" var="sub" varStatus="loop" end="9">
					<li>${loop.count}.${sub.key}<li>
				</c:forEach>
			</ul>
		</div>
		<div class="col-md-4" style="padding-top: 5px;">
			<h2>영화/예능/드라마 TOP10</h2>
			<ul style="color: black;">
				<c:forEach items="${ottContent}" var="content" varStatus="loop" end="9">
					<li>${loop.count}.${content}<li>
				</c:forEach>
			</ul>
		</div>
		<div class="col-md-4">
			<h2>좋아요 수가 많은 글</h2>
			<ul>				
				<c:forEach items="${reviews}" var="review" varStatus="loop">
					<li><a href="/recommandView.do?ussrno=${review.ussrNo}" style="color: black;">${loop.count}.${review.ussrTitle}</a><li>
				</c:forEach>
			</ul>
		</div>
		<!-- 
		<div class="col-md-6" style="padding: 5px 0 0 0;">
			<h2>${nickname}님의 취향에 따른 추천 리뷰!</h2>
			<ul>
				<li>a</li>
				<li>a</li>
				<li>a</li>
				<li>a</li>
				<li>a</li>
				<li>a</li>
				<li>a</li>
				<li>a</li>
				<li>a</li>
				<li>a</li>
			</ul>
		</div>
		-->		
	</div>
</div>