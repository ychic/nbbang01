<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</div>
</header>

<body>

	<fieldset>view페이지
			<div class="row">
				<div class="col-md-offset-2 col-md-8">
					<table class="table table-bordered table-striped">
						<tr>
							<th class="col-md-2 text-center">번호</th>
							<td>${record.inqno}</td>
						</tr>
						<tr>
							<th class="text-center">제목</th>
							<td>${record.inqtitle}</td>
						</tr>
						<tr>
							<th class="text-center">작성자</th>
							<td>${record.nickname}</td>
						</tr>
						<tr>
							<th class="text-center">등록일</th>
							<td>${record.inqpostdate}</td>
						</tr>
						<tr>
							<th class="text-center" colspan="2">내용</th>
						</tr>
						<tr>
							<td colspan="2">${record.inqcontent}</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-4">
				<button class="btn btn-info" onclick="javascript:isList();">확인</button>
			</div>
	      
		    <c:if test="${sessionScope.email ==record.email }">
			<div class="col-sm-offset-2 col-sm-4">
				<button class="btn btn-info" onclick="javascript:isUpdate();">수정</button>
			</div>
			<div class="col-sm-offset-2 col-sm-4">
				<button class="btn btn-info" onclick="javascript:isDelete();">삭제</button>
			</div>
			</c:if>
			
			<div class="col-sm-offset-2 col-sm-4">
				<button class="btn btn-info" onclick="javascript:isReport();">신고</button>
			</div>
			
	</fieldset>
<script>
function isList(){
	location.replace("<c:url value="/OBOList.do?nowPage=${param.nowPage}"/>");
	
}
function isUpdate(){
	location.replace("<c:url value="/OBOupdate.do?inqno=${record.inqno}"/>");

}
function isDelete(){
	if(confirm("정말로 삭제하시겠습니까?")){
		location.replace("<c:url value='/OBODelete.do?inqno=${record.inqno}&nowPage=${param.nowPage}'/>");
	}
}
function isReport(){
	if(confirm("정말로 신고하시겠습니까?")){
		location.replace("<c:url value='/oboReport.do?inqno=${record.inqno}&inqtitle=${record.inqtitle}&email=${record.email}&inqpostdate=${record.inqpostdate}&inqcontent=${record.inqcontent}'/>");
	}
}
	//페이징 추가해야됨
	/*
	function isList(){
		location.replace("<c:url value="/OBOList.do"/>");
		
	}
	*/
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

	});//서머노트
</script>