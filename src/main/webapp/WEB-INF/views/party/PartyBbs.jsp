<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>
<div class="container" style="width: 750px; color: black;">

	<fieldset style="width: 100%; padding: 0px 20px;">
		<div style="padding: 20px 16px; text-align: center; box-shadow: 3px 3px 3px white; border: solid 1px white; border-radius: 8px;">
			<h4 style="text-align: left; font-weight: bold;">보고싶은 OTT를 선택해주세요</h4>
			<div style="height: 26px;"></div>
			<div style="display: flex; flex-wrap: wrap; gap: 9px; width: 100%; -webkit-box-pack: justify; justify-content: space-between;">
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">넷플릭스</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/002_icon_watcha.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">왓챠</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/003_icon_disney.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">디즈니</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/004_icon_laftel.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">라프텔</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/005_icon_tving.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">티빙</div>
				</div>
				
				<div style="display: flex; flex-direction: column; flex: 1 0 28%; height: 120px; -webkit-box-align: center; align-items: center; padding-top: 5px; border-radius: 8px; cursor: pointer; border: none;"	onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img src="<%=request.getContextPath()%>/resources/party/006_icon_wavve.png" alt="" style="width: 75px; height: 75px;">
					</div>
					<div style="color: black; font-weight: bold;">웨이브</div>
				</div>
			</div>				
		</div>
	</fieldset>
	<div style="height: 26px;"></div>
	
	<div style="display: flex; flex-direction: row; width: 100%; padding: 20px; animation: 0.3s ease-out 0s 1 normal none running jLXWcT; -webkit-box-align: center; align-items: center; cursor: pointer; position: relative;">
		<div style="display: inline-block; float: left; padding: 20px 5px 20px 25px;">
			<img src="<%=request.getContextPath()%>/resources/party/no2_image.png" alt="">
		</div>
		<div>
			<h4 style="color: gray; font-weight: bold; padding-top: 10px;">파티 매칭 리스트를 확인하시고 모집 또는 참여하세요</h5>
		</div>
	</div>
	
	<div style="display: flex; flex-direction: row; padding: 19px 20px 19px 14px; animation: 0.3s ease-out 0s 1 normal none running jLXWcT; -webkit-box-align: center; align-items: center;">
		<div style="display: flex; width: 24px;	height: 24px; margin-right: 6px; background-color: var(--gray-050);	border-radius: 50%; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;">
			<img src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="" style="width: 16px; height: 16px;">
		</div>
		<div style="display: block; font-size: 16px; line-height: 22px; margin: 0px; font-weight: bold; color: var(--gray-600);">
		넷플릭스 볼래요
		</div>
		<div style="font-weight: bold; color: var(--gray-600); cursor: pointer; position: absolute; right: 20px;">
		변경
		</div>
	</div>
	
	<div class="table-responsive">
		<table class="table table-bordered table-hover table-condensed">
			<tr>
				<th class="text-center col-md-1.5">번호</th>
				<th class="text-center">제목</th>
				<th class="text-center">가격</th>
				<th class="text-center">작성자</th>
				<th class="text-center col-md-1">조회수</th>
				<th class="text-center">등록일</th>
			</tr>
			<tr>
				<td class="text-center col-md-1.5">4</td>
				<td class="text-left"><a href="<c:url value='/partyBbsView.do'/>" style="color: black;">넷플릭스 파티 구합니다. (1/4)</a></td>
				<td class="text-center">1인당 4,250원</td>
				<td class="text-center">김길동</td>									
				<td class="text-center col-md-1">0</td>
				<td class="text-center">2021-12-20</td>
			</tr>
			<tr>
				<td class="text-center col-md-1.5">3</td>
				<td class="text-left"><a href="<c:url value='/partyBbsView.do'/>" style="color: black;">테스트 제목</a></td>
				<td class="text-center">n인당 0원</td>
				<td class="text-center">테스트 이름</td>											
				<td class="text-center col-md-1">0</td>
				<td class="text-center">2021-12-20</td>
			</tr>
			<tr>
				<td class="text-center col-md-1.5">2</td>
				<td class="text-left"><a href="<c:url value='/partyBbsView.do'/>" style="color: black;">테스트 제목</a></td>
				<td class="text-center">n인당 0원</td>
				<td class="text-center">테스트 이름</td>											
				<td class="text-center col-md-1" style="color: black;">0</td>
				<td class="text-center">2021-12-20</td>
			</tr>
			<tr>
				<td class="text-center col-md-1.5">1</td>
				<td class="text-left"><a href="<c:url value='/partyBbsView.do'/>" style="color: black;">테스트 제목</a></td>
				<td class="text-center">n인당 0원</td>
				<td class="text-center">테스트 이름</td>											
				<td class="text-center col-md-1">0</td>
				<td class="text-center">2021-12-20</td>
			</tr>
		</table>
		<div style="text-align: right; padding-left:10px; padding-right:15px; width: 100%;"><a href="<c:url value='/partyBbsWrite.do'/>" style="color: black;"><button>모집하기</button></a></div>
	</div>
	<!-- 페이징 -->
	<div class="text-center"><a href="#" style="color: black;">&lt;&lt; <strong>1</strong> 2 3 4 5 &gt;&gt;</a></div>
</div>