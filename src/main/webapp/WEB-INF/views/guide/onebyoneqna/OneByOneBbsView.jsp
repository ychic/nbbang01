<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>


<style>


.row{
	margin-top:80px;
	font-size:15px;
	color:black;
}

th, td{
	height:40px;
}
.btns1{
	width:100%;
	display:inline-block;
	text-align:center;
}
.isReport{
	margin-right:500px;
}
th{
	background-color:#95e1d3;
	color:#FFF;
}
td{
	background-color:#fff;
}
.showComments{
	margin-left:200px;
	margin-bottom:200px;
	width:100%;
}
.textarea{
	width: 60%;
    height: 6.25em;
    resize: none;
    border:1px solid #ddd;
    margin-left:240px;
    margin-bottom:100px;
}
.resultComment{
	margin-bottom:20px;
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

 <body>
 
 <!-- 광고 1 -->
<div class="ad_one">
	
</div>


	<div class="container">
		<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">1:1 문의게시판</h1>
		<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">자유롭게 문의를 남겨주시면 빠른 시간 안에 답장하겠습니다.</h4>
		<hr class="col-md-12" style="width:900px;margin-left:50px;"/>
		
		<div class="row">
			<!-- 버튼과 거리두기 스타일 -->
			<div class="col-md-offset-2 col-md-8" style="margin-bottom:50px;">
					<!-- 제목 -->
					<div style="font-size:30px;font-weight:bold;">${record.inqtitle}</div>
					<!-- 작성자 및 게시일 -->
					<span>${record.email}</span><div style="float:right">${record.inqpostdate}</div>
					<!-- 구분선  -->
					<hr class="col-md-offset-2 col-md-8" style="width:725px;margin-left:0px;"/>
					<!-- 내용 -->
					<div style="font-size:20px;">${record.inqcontent}</div>
			</div>
			
			<!-- 버튼 위치 스타일 -->
			<div class="btns1">
					<button class="btn btn-info isList" onclick="javascript:isList();">목록</button>
					<button class="btn btn-warning isReport" onclick="javascript:isReport();">신고</button>
			
				<c:if test="${sessionScope.email ==record.email or sessionScope.email=='nbbang@nbbang.com'}">
					<button class="btn btn-secondary isUpdate" onclick="javascript:isUpdate();">수정</button>
					<button class="btn btn-secondary isDelete" onclick="javascript:isDelete();">삭제</button>
				</c:if>
				
				<c:if test="${sessionScope.email=='nbbang@nbbang.com'}">
					<button class="btn btn-info" onclick="javascript:setBlackMember();">회원정지</button>
				</c:if>
			</div>	
		</div>
		
		<!-- 구분선  -->
		<hr class="col-md-offset-2 col-md-8" style="width:725px"/>
		
		
		<!-- 코멘트 출력 폼-->
		<div class="row showComments">
		
					<!-- style 속성 직접 입력으로 가운데 정렬 -->
					<c:if test="${not empty record.comments }">
						<c:forEach var="comment" items="${record.comments}">
						
							<div class="card mb-3 resultComment">
								<!-- 닉네임 -->
								<h5 class="card-header">${record.nickname}</h5>
								
								<div class="card-body">
									<!-- 댓글 내용 및 게시일, 수정 클릭시 이부분에 댓글 수정 입력 가능하도록 input타입을 넣었음.. 아직 미완성.. -->
									<div><input type="hidden" class='updateform'/><span id="comcontentInput">${comment.comcontent}</span>
										<div style="margin-left:600px;">${comment.compostDate}</div></div>
									<div>
										<c:if test="${sessionScope.email==comment.email}" var="isOwn">
											<span class='update' style="cursor: pointer;margin-left:665px;font-size:12px">수정</span> | 
											<span class='delete' style="cursor: pointer;font-size:12px">삭제</span>
										</c:if>
										<c:if test="${not isOwn}">작성자가 아닙니다.</c:if>
									</div>
								</div>
								
							</div>
							
						</c:forEach>
					</c:if>
					<!-- 기존 디자인
					<div id="comments" class="col-md-9" style="margin:auto; float:none;">
					
					
						<c:if test="${not empty record.comments }">
								<table class='table table-bordered'>
									<c:forEach var="comment" items="${record.comments}">
									
										<!-- hover를 위해 id값 설정 
										<tr class="comment${comment.comno}">
											<td>${record.nickname}</td>
											<td>${comment.comcontent}</td>
											<td>${comment.compostDate}</td>
											<td>
												<c:if test="${sessionScope.email==comment.email}" var="isOwn">
													<span class='update' style="cursor: pointer">수정</span> | 
													<span class='delete' style="cursor: pointer">삭제</span>
												</c:if>
												<c:if test="${not isOwn}">
													작성자가 아닙니다.
												</c:if>
											</td>
										</tr>
									</c:forEach>
								</table>
						</c:if>
					</div>-->
					
					
					<!-- 댓글 입력 -->
					<!-- Comments Form -->
					
					<div class="card mb-3">
						<h5 class="card-header">Leave a Comment:</h5>
						<div class="card-body">
							<form name="comment-form" action="<c:url value='/oneByOneBbsView.do?inqno=${record.inqno}'/>" method="post" autocomplete="off">
								<div class="form-group">
									<input type="hidden" name="inqno" value="${record.inqno}" />
									<input type="hidden" name="comno"/>
									<textarea name="comcontent" cols="97" rows="3"></textarea>
								</div>
								<button type="submit" id="submit" class="btn btn-primary" value="등록">댓글등록</button>
							</form>
						</div>
					</div>
					
					<!-- 
					수정전 두번째 인풋디자인
					<div class="card my-4 textarea">
						<h5 class="card-header">Leave a Comment:</h5>
						<div class="card-body">
							<form name="comment-form" action="<c:url value='/oneByOneBbsView.do?inqno=${record.inqno}'/>" method="post" autocomplete="off">
								<div class="form-group">
									<input type="hidden" name="inqno" value="${record.inqno}" />
									<input type="hidden" name="comno"/>
									<textarea name="comcontent" cols="90" rows="3"></textarea>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div>
					</div>
					
					
					
					원래 디자인
					<div class="commentInput">
						<form class="form-inline" id="frm" action="<c:url value='/oneByOneBbsView.do?inqno=${record.inqno}'/>">
							<input type="hidden" name="inqno" value="${record.inqno}" />
							<input type="hidden" name="comno" /> 
							<textarea class="textarea" placeholder="댓글을 입력하세요" cols="20" rows="3" name="comcontent" ></textarea>
							<input class="btn btn-success" id="submit" type="button" value="등록" onclick="submit()"/>
						</form>
					</div>
					 -->
				</div>

		</div>
		
<!-- 광고 2 -->
<div class="ad_two">
	
</div>

<script>
	function isList(){
		location.replace("<c:url value="/OBOList.do?nowPage=${param.nowPage}"/>");
		
	}
	function setBlackMember(){
		if(confirm("정말로 회원 정지를 하시겠습니까?")){
			
		}
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
	
	
	/*
	//ajax를 이용해서 페이지 로딩후 다시 서버에 현재 글번호에 대한 한줄 댓글 목록 요청
	showComments();
	
	function showComments(){
		$.ajax({
			url:'<c:url value="/inqcommentList.do"/>',
			data:{"inqno":"${record.inqno}"},{"comno":"${comno}"}
			dataType:"json",
			type:"post",
			success:showComments_,
			error:function(e){console.log(e);}
		});
	}
	//실제 댓글 목록을 뿌려주는 함수]
	function showComments_(data){
		var comments ="<br/><h2>댓글 목록</h2>";
		comments+="<table class='table table-bordered'>";
		comments+="<tr><th class='text-center col-md-2'>작성자</th><th class='text-center'>댓글 내용</th><th class='text-center col-md-2'>작성일</th><th class='text-center col-md-2'>삭제</th></tr>";
		comments+="<tbody class=\"comment-title\">";
		
		if(data.length ==0){
			comments+="<tr><td colspan='4'>등록된 댓글이 없어요</td></tr>"
		}
		
		$.each(data,function(index,element){
			comments+="<tr class='comment"+element["COMNO"]+"'><td>"+element["NAME"]+"</td>";
			comments+="<td style='cursor:pointer' class='title' title='"+element["COMNO"]+"'>"+element["COMCONTENT"]+"</td>";
			comments+="<td>"+element["COMPOSTDATE"]+"</td>";
			
			if("${sessionScope.email}"==element['EMAIL'])
				comments+="<td><span href=\"#\" style='cursor:pointer' class='delete' title='"+element["COMNO"]+"'>삭제</span></td></tr>";
			else
				comments+="<td>삭제불가</td></tr>";
		});
		comments+="</tbody></table>";
		$('#comments').html(comments);
		
	}//////////
	*/
	
	//코멘트 입력 및 수정처리]
	var action;
	$("#submit").click(function(){
		console.log("클릭 이벤트 발생:",$(this).val());
		console.log("파라미터값들:",$("#frm").serialize());
		
		if($(this).val()==='등록'){
			action="<c:url value="/inqCommentWrite.do"/>";
		}
		else{
			action="<c:url value="/inqCommentEdit.do"/>";
		}
		
		console.log("한줄 댓글 키값(comno):",$('input[name=comno]').val());
		//ajax로 요청]
		$.ajax({
			url:action,
			data:$("#frm").serialize(),
			dataType:"text",
			type:"post",
			success:function(data){
				console.log("서버로부터 받은 데이타:",data);				
				//showComments();
				
				if($('#submit').val()=='등록'){
					var comno = data.split(":")[0];
					var name = data.split(":")[1];
					var date = new Date();
					var compostdate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDate();
					console.log(comno,name)
					var newComment ="<tr class='comment"+comno+"'><td>"+name+"</td><td style='cursor:pointer' class='title' title='"+comno+"'>"+$("#title").val()+"</td><td>"+compostdate+"</td><td style='cursor:pointer' class='delete' title='"+data+"'>삭제</td></tr>";
					$(".comment-title").prepend(newComment);
				}
				else{
					//코멘트 제목 클릭시 설정한 comno값
					//$('.title[title='+$('input[name=comno]').val()+']').html($("#title").val());
					$('.title[title='+data+']').html($("#title").val());
					$('#submit').val("등록");
				}
				$('#title').val("");
				$('#title').focus();
			}
		});
	});//click
	
	//코멘트 제목 클릭시 수정처리하기(UI변경)
	$(document).on('click','.update',function(){
		console.log('수정진입')
		$('.updateform').attr('type','text');
		$('.updateform').val($('#comcontentInput').html());
	
		/*
		$('#title').val($(this).html());
		$('#submit').val("수정");
		$('input[name=comno]').val($(this).attr('title'));
		*/
	});
	//삭제 클릭시 삭제처리하기
	$(document).on('click','.delete',function(){
		var comno = $(this).attr('title').split(":")[0];
		if(confirm("정말로 삭제 하시겠습니까?")){
			//삭제 처리]
			$.ajax({
				url:"<c:url value="/inqCommentDelete.do"/>",
				type:"post",
				data:"comno="+comno,
				dataType:"text"
			}).done(function(data){
				$('.comment'+comno).remove();
			}).fail(function(e){
				console.log(e)
			});
		}
	});
</script>