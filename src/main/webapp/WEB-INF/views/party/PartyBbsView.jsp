<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
	<div class="page-header">
		<h1>PartyBbsView.jsp <small>게시판 상세</small></h1>
	</div>
	
	<div style="background-color:white; text-align: center; padding: 20px;">
		<button>&lt;</button>
		<img src="<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg" alt="" style="width: 250px;">
		<button>&gt;</button>
	</div>

	<div style="background-color: white; width: 100%; text-decoration: none; padding-bottom: 23px; position: relative; float: left;">
   		<div>
   			<div style="display: inline-block; float: left; padding-left:10px; margin-right:10px;">
   				<img src="<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg" alt="" style="width: 40px; height: 40px; border-radius: 50%;">
   			</div>
   			<div style="margin-top:10px; color: black; font-weight: bold; float: left;">
   				김길동
   			</div>
   		</div>
	</div>
	
	<div style="background-color: white; width: 100%; float: left;">
		<h1 style="padding-left:10px; float: left; font-weight: bold;">넷플릭스 파티 구합니다.</h1><h2 style="float: right; color: orange; margin-right: 10px;">(1/4)</h2>
	</div>
	<div style="padding-left:10px; background-color: white; width: 100%; float: left; color: #868e96;">2021-12-20</div>
	<div style="padding-left:10px; background-color: white; width: 100%; float: left; color: black; font-weight: bold;">10,000원</div>
	<div style="background-color: white; width: 100%; float: left; height: 20px;"></div>
	<div style="padding-left:10px; background-color: white; width: 100%; height: 100%; float: left; color: black; font-size: 17px; line-height: 1.6; letter-spacing: -0.6px;">
		대화 후 프로필 만들어 드립니다.<br>
		당연히 자기 프로필만 사용하시면되고, 평범하게 영상시청만 하시면 됩니다.<br><br>
		기간은 오늘부터이며, 종료는 2월 중입니다.<br>
		별다른 알림없이 계정정보를 교체하니 로그아웃되면 아, 끝났구나~ 하시면 됩니다.<br><br><br>
		3명 모두 모집하면 종료합니다.<br>
	</div>
	<div style="padding-left:10px; background-color: white; width: 100%; float: left; color: #868e96;">조회수 1</div>
	<div style="padding-left:10px; padding-right:15px; background-color: white; width: 100%; text-align: right; color: #868e96;"><button>대화하기</button></div>
</div>