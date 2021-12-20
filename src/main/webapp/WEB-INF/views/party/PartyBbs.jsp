<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
	<div class="page-header">
		<h1>PartyBbs.jsp <small>수정 테스트 파티원구하는 게시판</small></h1>
	</div>

	<fieldset style="width: 100%; padding: 0px 20px;">
		<div style="padding: 20px 16px; text-align: center; box-shadow: 3px 3px 3px white; border: solid 1px white; border-radius: 8px;">
			<h4 style="text-align: left; font-weight: bold;">보고싶은 OTT를 선택해주세요</h4>
			<div style="height: 26px;"></div>
			<div style="display: flex; flex-wrap: wrap; gap: 9px; width: 100%; -webkit-box-pack: justify; justify-content: space-between;">
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFFFFF'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">넷플릭스</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFFFFF'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/002_icon_watcha.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">왓챠</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFFFFF'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/003_icon_disney.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">디즈니</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFFFFF'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/004_icon_laftel.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">라프텔</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFFFFF'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/005_icon_tving.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">티빙</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFFFFF'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/006_icon_wavve.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">웨이브</div>
				</div>
			</div>				
		</div>
	</fieldset>
	<div style="height: 26px;"></div>
	<fieldset>
		<legend>게시판 리스트</legend>
	</fieldset>
	<div class="table-responsive">
		<table class="table table-bordered table-hover table-condensed">
			<tr>
				<th class="text-center col-md-1">번호</th>
				<th class="text-left">제목</th>
				<th class="text-center col-md-1">가격</th>
				<th class="text-center col-md-1">작성자</th>
				<th class="text-center col-md-1">조회수</th>
				<th class="text-center col-md-1">등록일</th>
			</tr>
			<tr>
				<td class="text-center col-md-1.5">4</td>
				<td class="text-left"> <a href="<c:url value='/partyBbsView.do'/>" style="color:white;">넷플릭스 파티 구합니다. (1/4)</a></td>
				<td class="text-center col-md-1">10,000원</td>
				<td class="text-center col-md-1">김길동</td>											
				<td class="text-center col-md-1">0</td>
				<td class="text-center col-md-1">2021-12-20</td>
			</tr>
			<tr>
				<td class="text-center col-md-1.5">3</td>
				<td class="text-left"><a href="#">테스트</a></td>
				<td class="text-center col-md-1">10,000원</td>
				<td class="text-center col-md-1">이길동</td>											
				<td class="text-center col-md-1">0</td>
				<td class="text-center col-md-1">2021-12-20</td>
			</tr>
			<tr>
				<td class="text-center col-md-1.5">2</td>
				<td class="text-left"><a href="#">테스트</a></td>
				<td class="text-center col-md-1">10,000원</td>
				<td class="text-center col-md-1">박길동</td>											
				<td class="text-center col-md-1">0</td>
				<td class="text-center col-md-1">2021-12-20</td>
			</tr>
			<tr>
				<td class="text-center col-md-1.5">1</td>
				<td class="text-left"><a href="#">제목</a></td>
				<td class="text-center col-md-1">10,000원</td>
				<td class="text-center col-md-1">최길동</td>											
				<td class="text-center col-md-1">0</td>
				<td class="text-center col-md-1">2021-12-20</td>
			</tr>
		</table>
	</div>
	<!-- 페이징 -->
	<div class="text-center">&lt;&lt; &lt; <strong>1</strong> 2 3 4 5 &gt; &gt;&gt;</div>
</div>