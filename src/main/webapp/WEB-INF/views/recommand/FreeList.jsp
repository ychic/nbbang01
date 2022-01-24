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

<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;margin-left:240px;color:#BEBEBE;">자유게시판</h1>
<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;margin-left:240px;color:#BEBEBE;">자유롭게 의견을 공유하세요!</h4>
<div class="container">
	<br/>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="<c:url value='/freeNormalList.do'/>">일반</a></li><!-- 구독서비스 추천 -->
					<li><a href="<c:url value='/freeReviewList.do'/>">리뷰</a></li><!-- 컨텐츠 추천 -->
					<li><a href="<c:url value='/freeInfoList.do'/>">정보</a></li><!-- 꿀팁 추천 -->
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">정렬<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="<c:url value='/freeList.do'/>">최신순</a></li>
							<li><a href="<c:url value='/freeLikeSortList.do'/>">추천순</a></li>
						</ul>
					</li>
				</ul>
				<!-- 검색용 UI -->
				<form class="navbar-form navbar-right" method="post" action="<c:url value='/freeList.do'/>">
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
				<c:if test="${empty freeListPagingData.lists }" var="isEmpty">
					<tr>
						<td colspan="4" style="text-align: center;">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach var="item" items="${freeListPagingData.lists}" varStatus="loop">
						<tr class="text-center">
							<td>
								<c:if test="${item.navcategory=='freeNormal'}"><span>일반</span></c:if>
								<c:if test="${item.navcategory=='freeReview'}"><span>리뷰</span></c:if>
								<c:if test="${item.navcategory=='freeInfo'}"><span>정보</span></c:if>
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
			<c:if test="${freeListPagingData.lists.size() !=0 }">
				<div class="row">
					<div class="col-md-12 text-center">${freeListPagingData.pagingString}</div>
				</div>
			</c:if>
		</div>
	</div>
</div>
<!-- 광고 2 -->
<div class="ad_two">
	
</div>