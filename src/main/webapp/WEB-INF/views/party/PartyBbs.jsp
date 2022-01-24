<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	</div>
</header>

<style>
	div{
		color: black;
	}
	#bbs{
		width: 750px;
	}
	.selectOTT{
		padding: 20px 16px;
		text-align: center;
		box-shadow: 3px 3px 3px white;
		border: solid 1px white;
		border-radius: 8px;
	}
	.ottText{
		text-align: left;
		font-weight: bold;
	}
	.blankSpace{
		height: 26px;
	}
	.ottBox{
		display: flex;
		flex-wrap: wrap;
		gap: 9px;
		width: 100%;
		-webkit-box-pack: justify;
		justify-content: space-between;
	}
	.ottIcon{
		display: flex;
		flex-direction: column;
		flex: 1 0 28%;
		height: 120px;
		-webkit-box-align: center;
		align-items: center;
		padding-top: 5px;
		border-radius: 8px;
		cursor: pointer;
		border: none;
	}
	.ottImage{
		width: 75px;
		height: 75px;
	}
	.ottName{
		color: black;
		font-weight: bold;
	}
	.listCheck{
		display: flex;
		flex-direction: row;
		width: 100%;
		padding: 20px;
		animation: 0.3s ease-out 0s 1 normal none running jLXWcT;
		-webkit-box-align: center;
		align-items: center;
		cursor: pointer;
		position: relative;
	}
	.twoImage{
		display: inline-block;
		float: left;
		padding: 20px 5px 20px 25px;
	}
	.listCheckText{
		color: gray;
		font-weight: bold;
		padding-top: 10px;
	}
	.watchingCategory{
		display: flex;
		flex-direction: row;
		padding: 19px 20px 19px 14px;
		animation: 0.3s ease-out 0s 1 normal none running jLXWcT;
		-webkit-box-align: center;
		align-items: center;
	}
	.miniIcon{
		display: flex;
		width: 24px;
		height: 24px;
		margin-right: 6px;
		background-color: var(--gray-050);
		border-radius: 50%;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: center;
		justify-content: center;
	}
	.miniIconImage{
		width: 16px;
		height: 16px;
	}
	.watchingText{
		display: block;
		font-size: 16px;
		line-height: 22px;
		margin: 0px;
		font-weight: bold;
		color: var(--gray-600);
	}
	.watchingChange{
		font-weight: bold;
		color: var(--gray-600);
		cursor: pointer;
		position: absolute;
		right: 20px;
	}
	.partyEnd{
		position: absolute;
		padding-top: 60px;
		padding-left: 50px;
	}
	#bbsList{
		width: 600px;
		color: black
	}
	#addBt{
		position:fixed;
		right:400px;
		top:600px;
		z-index:10000;
	}
	.listBox{
		border: 1px solid gray;
		border-radius: 3px;
		padding-left: 20px;
		padding-right: 20px;
	}
	.profileBox{
		width: 100%;
		text-decoration: none;
		padding-bottom: 23px;
		position: relative;
		float: left;
	}
	.userProfile{
		display: inline-block;
		float: left;
		padding-left:10px;
		margin-right:10px;
	}
	.userProfileImg{
		width: 40px;
		height: 40px;
		border-radius: 50%;
	}
	.nickname{
		margin-top:10px;
		font-weight: bold;
		float: left;
	}
	.partyTitleNCapa{
		width: 100%;
		float: left;
	}
	.partyTitleText{
		padding-left:10px;
		float: left;
		font-weight: bold;
	}
	.partyMaxCapacity{
		float: right;
		color: orange;
		margin-right: 10px;
	}
	.partyCategoryNameNMem{
		padding-left:10px;
		width: 100%;
		float: left;
		font-weight: bold;
	}
	.partyPostdate{
		padding-left:10px;
		width: 100%;
		float: left;
		color: #868e96;
	}
	.price{
		padding-left:10px;
		width: 100%;
		float: left;
		font-weight: bold;
		font-size: 18px;
	}
	.detailBlank{
		width: 100%;
		float: left;
		height: 20px;
	}
	.partyContent{
		overflow: auto;
		padding-left:10px;
		width: 100%;
		height: 200px;
		float: left;
		font-size: 17px;
		line-height: 1.6;
		letter-spacing: -0.6px;
	}
	#buttonArea{
		padding-left: 10px;
		width: 100%;
		text-align: right;
	}
	.content_none{
		width: 308px;
		height: 156px;
	}
</style>

<div id="bbs" class="container">
		<!-- <div class="selectOTT">
			<h4 class="ottText">보고싶은 OTT를 선택해주세요</h4> -->
			
			<div class="blankSpace"></div>
			
			<div class="ottBox">
			
				<a class="ottIcon" href="<c:url value="/netplixList.do"/>" onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
						<div>
							<img class="ottImage" src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="">
						</div>
						<div class="ottName">넷플릭스</div>
				</a>
				
				<a class="ottIcon" href="<c:url value="/whatchaList.do"/>" onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img class="ottImage" src="<%=request.getContextPath()%>/resources/party/002_icon_watcha.png" alt="">
					</div>
					<div class="ottName">왓챠</div>
				</a>
				
				<a class="ottIcon" href="<c:url value="/disneyList.do"/>" onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img class="ottImage" src="<%=request.getContextPath()%>/resources/party/003_icon_disney.png" alt="">
					</div>
					<div class="ottName">디즈니</div>
				</a>
				
				<a class="ottIcon" href="<c:url value="/laftelList.do"/>" onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img class="ottImage" src="<%=request.getContextPath()%>/resources/party/004_icon_laftel.png" alt="">
					</div>
					<div class="ottName">라프텔</div>
				</a>
				
				<a class="ottIcon" href="<c:url value="/tvingList.do"/>" onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img class="ottImage" src="<%=request.getContextPath()%>/resources/party/005_icon_tving.png" alt="">
					</div>
					<div class="ottName">티빙</div>
				</a>
				
				<a class="ottIcon" href="<c:url value="/wavveList.do"/>" onmouseover="this.style.backgroundColor='#FFE6D0'" onmouseout="this.style.backgroundColor=''">
					<div>
						<img class="ottImage" src="<%=request.getContextPath()%>/resources/party/006_icon_wavve.png" alt="">
					</div>
					<div class="ottName">웨이브</div>
				</a>
			</div>				
		</div>
	
	<div class="blankSpace"></div>
	
<%-- 	<div class="listCheck">
		<div class="twoImage">
			<img src="<%=request.getContextPath()%>/resources/party/no2_image.png" alt="">
		</div>
		<div>
			<h4 class="listCheckText">파티 매칭 리스트를 확인하시고 모집 또는 참여하세요!</h4>
		</div>
	</div> --%>
	
<%-- 	<div class="watchingCategory">
		<div class="miniIcon">
			<img class="miniIconImage" src="<%=request.getContextPath()%>/resources/party/001_icon_netflix.png" alt="">
		</div>
		<div class="watchingText">
		넷플릭스 볼래요
		</div>
		<div class="watchingChange">
		변경
		</div>
	</div> --%>
	
	<div id="bbsList" class="container">
		<div class="blankSpace"></div>
		<!-- 작성하기 버튼 -->
		<div class="row">
			<div class="col-md-12 text-right">
				<a href="<c:url value="/partyBbsWrite.do"/>" id="addBt" class="btn btn-warning">등록</a>
			</div>
		</div>
		
		<div class="blankSpace"></div>

	<!-- 리스트 출력 -->
	<c:if test="${not empty partyBbsListPagingData.lists}">

		<c:forEach var="item" items="${partyBbsListPagingData.lists}"
			varStatus="loop">
			<div hidden="hidden">${item.partyNo }</div>
			<c:if test="${item.partyActivation eq 'false'}">
				<img class="partyEnd" alt=""
					src="<%=request.getContextPath()%>/resources/party/party_end.png">
			</c:if>
			<div class="listBox">
				<div class="blankSpace"></div>
				<div class="profileBox">
					<div>
						<div class="userProfile">
							<img class="userProfileImg"
								src="<%=request.getContextPath()%>/resources/images/profile/<c:choose><c:when test="${not empty item.profile }">${item.profile }</c:when><c:otherwise>${item.oringinProfile }</c:otherwise> </c:choose>"
								alt="">
						</div>
						<div class="nickname">${item.nickname }</div>
					</div>
				</div>

				<div class="partyTitleNCapa">
					<h1 class="partyTitleText">${item.partyTitle }</h1>
					<h2 class="partyMaxCapacity">(1/${item.partyMaxCapacity })</h2>
				</div>
				<div class="partyCategoryNameNMem">
					<c:choose>
						<c:when test="${item.partyCategoryName eq 'netplix'}">
											넷플릭스
										</c:when>
						<c:when test="${item.partyCategoryName eq 'whatcha'}">
											왓챠
										</c:when>
						<c:when test="${item.partyCategoryName eq 'disney'}">
											디즈니
										</c:when>
						<c:when test="${item.partyCategoryName eq 'laftel'}">
											라프텔
										</c:when>
						<c:when test="${item.partyCategoryName eq 'tiving'}">
											티빙
										</c:when>
						<c:when test="${item.partyCategoryName eq 'wavve'}">
											웨이브
										</c:when>
					</c:choose>
				</div>
				
				
				
				<div class="partyPostdate">${item.partyPostdate }</div>
				<div class="price"><fmt:formatNumber value="${item.partyAllotmentPrice }" pattern="#,###" />원 / 1인당 <fmt:parseNumber var="price" integerOnly="true" value="${item.partyAllotmentPrice / item.partyMaxCapacity }" /><fmt:formatNumber value="${price }" pattern="#,###" />원</div>
				<div class="detailBlank"></div>
				<div class="partyContent">${item.partyContent }</div>
				<div id="buttonArea" class="row">
					<div class="col-md-12 text-right">
						<c:if
							test="${email eq item.email || email eq 'nbbang@nbbang.com'}">
							<!-- 어드민 코드 수정하기 -->
							<a href="javascript:isDelete(${item.partyNo });"
								class="btn btn-warning"
								<c:if test="${item.partyActivation eq 'false'}">disabled</c:if>>삭제</a>
						</c:if>
						<a href="<c:url value="/partyReport.do?partyNo=${item.partyNo}&partyTitle=${item.partyTitle}&email=${item.email}&partyPostdate=${item.partyPostdate}&partyContent=${item.partyContent}"/>" class="btn btn-warning"
							<c:if test="${item.partyActivation eq 'false'}">disabled</c:if>>신고</a>
						<a href="<c:url value="#"/>" class="btn btn-warning"
							<c:if test="${item.partyActivation eq 'false'}">disabled</c:if>>대화하기</a>
					</div>
				</div>
				<div class="blankSpace"></div>
			</div>
			<div class="blankSpace"></div>

		</c:forEach>
	</c:if>
	<!-- 리스트 출력 끝 -->
	<c:if test="${empty partyBbsListPagingData.lists}">
		<div class="listBox">
			<div style="text-align: center; padding-top: 100px; padding-bottom: 100px;">
				<img class="contentNone"
					src="<%=request.getContextPath()%>/resources/party/content_none.png"
					alt="">
			</div>
		</div>
	</c:if>
	<div class="blankSpace"></div>
	</div>
</div>

<script>
	function isDelete(partyNo) {
		if (confirm("정말로 삭제 하시겠습니까?")) {
			location.replace("<c:url value='/partyBbsDelete.do?partyNo='/>"
					+ partyNo);
		}
	}
</script>