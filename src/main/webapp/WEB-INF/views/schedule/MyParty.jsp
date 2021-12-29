<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container" style="width: 750px; color: black">
	<div class="page-header">
		<h1>MyParty.jsp <small>내 파티</small></h1>
	</div>
	<fieldset>
		<legend>내가 참여중인 파티</legend>
	</fieldset>
</div>
</div>
</header>
<div class="container" style="width: 750px; color: black">
	<br>
	<div>내가 현재 참여중인 파티</div>
	<div>파티 이름(링크), 파티방장, OTT구분, 멤버십구분, 모집인원, 결제금액, 파티가입일(?)-확정, 파티종료일(?)-수동종료</div>
	<div style="width: 100%; text-decoration: none; padding-bottom: 23px; position: relative; float: left;">
		<div>
			<div style="display: inline-block; float: left; padding-left:10px;">
				<img src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="" style="width: 70px; height: 70px;">
			</div>
			<div style="margin-top:10px; font-weight: bold; float: left;">
	   			<label style="color: gray;">서비스</label><br>
	   			넷플릭스
   			</div>		
		</div>
	</div>
	<br>
	<div>종료된 파티</div>
	<div style="width: 100%; text-decoration: none; padding-bottom: 23px; position: relative; float: left;">
		<div>
			<div style="display: inline-block; float: left; padding-left:10px;">
				<img src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="" style="width: 70px; height: 70px;">
			</div>
			<div style="margin-top:10px; font-weight: bold; float: left;">
	   			<label style="color: gray;">서비스</label><br>
	   			넷플릭스
   			</div>		
		</div>
	</div>
	
	<div style="text-align: center;">
		파티가 없을때 나오는 이미지<br>
		<img src="<%=request.getContextPath()%>/resources/party/no_party.png" alt=""><br>
		<h4 style="color: gray; font-weight: bold;">구독 파티에 참여해보세요!</h4>
	</div>
	
	
</div>