<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</style>

<div class="container">
	<div>
		<h1>게시판목록</h1>
	</div>
	<br />
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" class="col-sm-2 text-center">No</th>
					<th scope="col" class="col-sm-5 text-center">Title</th>
					<th scope="col" class="col-sm-3 text-center">PostDate</th>
					<th scope="col" class="col-sm-2 text-center">Writer</th>
				</tr>
			</thead>
			<tbody>

				<c:if test="${empty listPagingData.lists}" var="isEmpty">
					<tr>
						<td colspan="4">등록된 게시물이 없어요</td>
					</tr>
				</c:if>

				<c:if test="${not isEmpty}">
					<c:forEach var="item" items="${listPagingData.lists}"
						varStatus="loop">
						<tr>
							<td>${listPagingData.totalRecordCount - (((listPagingData.nowPage - 1) * listPagingData.pageSize) + loop.index)}</td>

							<td class="text-left"><a
								href="<c:url value="/oneByOneBbsView.do?inqno=${item.inqno}&nowPage="/><c:out value="${param.nowPage }" default="1"/>">
									${item.inqtitle }</a> <span class="badge">${item.commentCount }</span></td>
							<td>${item.email }</td>
							<td>${item.inqpostdate }</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>

		<a class="btn btn-default pull-right"
			href="<c:url value='/oneByOneBbsWrite.do'/>">글쓰기</a>

		<!-- 페이징 -->
		<c:if test="${listPagingData.lists.size() !=0 }">
			<div class="row">
				<div class="col-md-12 text-center">${listPagingData.pagingString}</div>
			</div>
		</c:if>
		<!-- 검색용 UI -->
		<div class="row">
			<div class="text-center">
				<form class="form-inline" method="post"
					action="<c:url value='/OBOList.do'/>">
					<div class="form-group">

						<!-- searchColumn /searchWord 의 파라미터로 넘어감 -->
						<select name="searchColumn" class="form-control">
							<option value="title">제목</option>
							<option value="name">작성자</option>
							<option value="content">내용</option>
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
