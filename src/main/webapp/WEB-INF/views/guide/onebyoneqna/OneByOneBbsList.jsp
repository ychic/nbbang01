<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	</div>
</header>


  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  
<style>
	tr{
		color : black;
	}
	td > a{
		color : black;
	}
	.table-responsive{
		overflow: visible;
	}
	.container{
		width:60%;
		
	}
	.serchstyle{
		margin-bottom:50px;
	}
	tbody{
		text-align:center;
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


<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;margin-left:240px;color:#BEBEBE;">1:1 문의게시판</h1>
<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;margin-left:240px;color:#BEBEBE;">자유롭게 문의를 남겨주시면 빠른 시간 안에 답장하겠습니다.</h4>
	
<div class="container">
	
	<br />
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" class="col-sm-2 text-center">No</th>
					<th scope="col" class="col-sm-5 text-center">Title</th>
					<th scope="col" class="col-sm-3 text-center">Writer</th>
					<th scope="col" class="col-sm-2 text-center">PostDate</th>
				</tr>
			</thead>
			<tbody>

				<c:if test="${empty listPagingData.lists}" var="isEmpty">
					<tr>
						<td colspan="4">등록된 게시물이 없어요</td>
					</tr>
				</c:if>

				<c:if test="${not isEmpty}">
					<c:forEach var="item" items="${listPagingData.lists}" varStatus="loop">
						<tr>
							<td>${listPagingData.totalRecordCount - (((listPagingData.nowPage - 1) * listPagingData.pageSize) + loop.index)}</td>

							<td class="text-left"><a
								href="<c:url value="/oneByOneBbsView.do?inqno=${item.inqno}&nowPage="/><c:out value="${param.nowPage }" default="1"/>">
									${item.inqtitle }</a> <span class="badge">${item.commentCount }</span></td>
							<td>${item.nickname }</td>
							<td>${item.inqpostdate }</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>

		<a class="btn btn-warning pull-right"
			href="<c:url value='/oneByOneBbsWrite.do'/>">글쓰기</a>

		<!-- 페이징 -->
		<c:if test="${listPagingData.lists.size() !=0 }">
			<div class="row">
				<div class="col-md-12 text-center">${listPagingData.pagingString}</div>
			</div>
		</c:if>
		
		<!-- 검색용 UI -->
		<div class="row serchstyle">
			<div class="text-center">
				<form class="form-inline" method="post" action="<c:url value='/OBOList.do'/>">
					<div class="form-group">
						<!-- searchColumn /searchWord 의 파라미터로 넘어감 -->
						<select name="searchColumn" class="form-control">
							<option value="inqtitle">제목</option>
							<option value="nickname">작성자</option>
							<option value="inqcontent" >내용</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" name="searchWord" class="form-control" />
					</div>
					<button type="submit" class="btn btn-primary">검색</button>
				</form>
			</div>
		</div>



	</div>
</div>

<!-- 광고 2 -->
<div class="ad_two">
	
</div>



<script>
	$('.summernote')
			.summernote(
					{

						height : 250,
						lang : "ko-KR",
						placeholder : "여기에 입력하세요.",
						toolbar : [
								// [groupName, [list of button]]
								[ 'fontname', [ 'fontname' ] ],
								[ 'fontsize', [ 'fontsize' ] ],
								[
										'style',
										[ 'bold', 'italic', 'underline',
												'strikethrough', 'clear' ] ],
								[ 'color', [ 'forecolor', 'color' ] ],
								[ 'table', [ 'table' ] ],
								[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
								[ 'height', [ 'height' ] ],
								[ 'insert', [ 'picture', 'link', 'video' ] ],
								[ 'view', [ 'fullscreen', 'help' ] ] ],
						fontNames : [ 'Arial', 'Arial Black', 'Comic Sans MS',
								'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림',
								'돋움체', '바탕체' ],
						fontSizes : [ '8', '9', '10', '11', '12', '14', '16',
								'18', '20', '22', '24', '28', '30', '36', '50',
								'72' ]

					});
</script>
