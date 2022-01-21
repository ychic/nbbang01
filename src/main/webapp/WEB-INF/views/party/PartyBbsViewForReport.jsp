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
	#bbsList{
		width: 600px;
		color: black
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
</style>

<div id="bbs" class="container">
	<div id="bbsList" class="container">
		
		<div class="blankSpace"></div>
		
			<div class="listBox">
				<div class="blankSpace"></div>
				<div class="profileBox">
			   		<div>
			   			<div class="userProfile">
			   				<img class="userProfileImg" src="<%=request.getContextPath()%>/resources/images/profile/profile_image.png" alt="">
			   			</div>
			   			<div class="nickname">
			   				${record.nickname }
			   			</div>
			   		</div>
				</div>
				
				<div class="partyTitleNCapa">
					<h1 class="partyTitleText">${record.partyTitle }</h1>
					<h2 class="partyMaxCapacity">(1/${record.partyMaxCapacity })</h2>
				</div>
				<div class="partyCategoryNameNMem">${record.partyCategoryName} / ${record.partyMembership}</div>
				<div class="partyPostdate">${record.partyPostdate }</div>
				<div class="price">${record.partyAllotmentPrice }원 / 1인당 <fmt:parseNumber var="price" integerOnly="true" value="${record.partyAllotmentPrice / record.partyMaxCapacity }"/>${price }원</div>
				<div class="detailBlank"></div>
				<div class="partyContent">
					${record.partyContent }
				</div>
				<div id="buttonArea" class="row">
					<div class="col-md-12 text-right">
						<c:if test="${email eq record.email || email eq 'nbbang@nbbang.com'}"><!-- 어드민 코드 수정하기 -->
							<a href="<c:url value="#"/>" class="btn btn-warning">삭제</a>
						</c:if>
						<a href="<c:url value="#"/>" class="btn btn-warning">수정</a>
						<a href="<c:url value="#"/>" class="btn btn-warning">회원정지</a>
					</div>
				</div>
				<div class="blankSpace"></div>
			</div>
			<div class="blankSpace"></div>
		<div class="blankSpace"></div>
	</div>
</div>
<script>
	
</script>