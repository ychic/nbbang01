<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	</div>
</header>

<style>
tr {
	color: black;
}

/* 광고 영역 */
.ad_one, .ad_two{
	background-color:red;
	width: 188.5px;
	height:377px;
	display: inline-block;
	position: fixed;
	top:150px;
	background-size: cover;
	background-position: center;
	background-image: url("<%=request.getContextPath()%>/resources/account/ad_1.PNG");
	animation: ad_one_ani 16s infinite;
}
	
.ad_one{
	left:30px;
}
	
.ad_two{
	right:30px;
}
	
@keyframes ad_one_ani {
	33%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_2.PNG")}
	66%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_3.PNG")}
	100%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_1.PNG")}
}
</style>

<!-- 광고 1 -->
<div class="ad_one">
	
</div>
<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;margin-left:240px;color:#BEBEBE;">추천게시판</h1>
<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;margin-left:240px;color:#BEBEBE;">재밌는건 같이 봐요!</h4>
<div class="container">
	<br/>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="<c:url value='/recommandServiceList.do'/>">구독서비스 추천</a></li><!-- 일반 -->
					<li><a href="<c:url value='/recommandContentsList.do'/>">컨텐츠 추천</a></li><!-- 리뷰 -->
					<li><a href="<c:url value='/recommandTipsList.do'/>">꿀팁 추천</a></li><!-- 정보 -->
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">정렬<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="<c:url value='/recommandList.do'/>">최신순</a></li>
							<li><a href="<c:url value='/recommandLikeSortList.do'/>">추천순</a></li>
						</ul>
					</li>
				</ul>
				<!-- 검색용 UI -->
				<form class="navbar-form navbar-right" method="post" action="<c:url value='/recommandList.do'/>">
					    <div class="form-group">
							<select name="searchColumn" class="form-control">
								<option value="ussrtitle">제목</option>
								<option value="nickname">작성자</option>
								<option value="ussrcontent">내용</option>
							</select>
						</div>
					    <div class="form-group">
					    	<input type="text" name="searchWord" class="form-control" placeholder="검색">
						</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	<div class="table-responsive" style="overflow:hidden;">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" class="col-md-1 text-center">Category</th>
					<th scope="col" class="col-md-2 text-center">Title</th>
					<th scope="col" class="col-md-1 text-center">Writer</th>
					<th scope="col" class="col-md-1 text-center">PostDate</th>
					<th scope="col" class="col-md-1 text-center">likeCount</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty recommandListPagingData.lists }" var="isEmpty">
					<tr>
						<td colspan="4" style="text-align: center;">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach var="item" items="${recommandListPagingData.lists}" varStatus="loop">
						<tr class="text-center">
							<td>
								<c:if test="${item.navcategory=='recommandService'}"><span>구독서비스 추천</span></c:if>
								<c:if test="${item.navcategory=='recommandContents'}"><span>컨텐츠 추천</span></c:if>
								<c:if test="${item.navcategory=='recommandTips'}"><span>꿀팁 추천</span></c:if>
							</td>
							<td class="text-left">
								<a href="<c:url value="/ussrView.do?ussrno=${item.ussrno}&nowPage="/><c:out value="${param.nowPage }" default="1"/>">${item.ussrtitle }
								<span class="badge">${item.commentCount }</span></a>
							</td>
							<td class="text-center">${item.nickname}</td>
							<td class="text-center" id="ussrpostdate">${item.ussrpostdate}</td>
							<td class="text-center" id="likeCount">
								${item.likeCount}
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>

		<a class="btn btn-default pull-right" href="<c:url value='/ussrWrite.do'/>">글쓰기</a>

		<div class="text-center">
			<!-- 페이징 -->
			<c:if test="${recommandListPagingData.lists.size() !=0 }">
				<div class="row">
					<div class="col-md-12 text-center">${recommandListPagingData.pagingString}</div>
				</div>
			</c:if>
		</div>
	</div>
</div>
<!-- 광고 2 -->
<div class="ad_two">
	
</div>