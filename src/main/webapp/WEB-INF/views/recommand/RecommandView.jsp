<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	table{
		color:black;
	}
	#frm{
		margin-top: 10px;
		margin-bottom: 50px;
	}
</style>

<div class="container">
	<div>
		<h1 class="col-md-offset-2">${record.ussrtitle}</h1>
	</div>
	<hr class="col-md-offset-2 col-md-8" style="width:725px"/>
	<div class="row">
		<div class="col-md-offset-2 col-md-8" align="right">
			<table class="table table-bordered" style="width:300px">
				<tr>
					<th class="text-center col-md-2">작성자</th>
					<td class="text-center col-md-2">${record.nickname}</td>
				</tr>
				<tr>
					<th class="text-center">등록일</th>
					<td class="text-center">${record.ussrpostdate}</td>
				</tr>
				<tr>
					<th class="text-center">주제</th>
					<td class="text-center">
						<c:if test="${record.ussrcategoryname=='recommand,recommandService'}">구독서비스 추천</c:if>
						<c:if test="${record.ussrcategoryname=='recommand,recommandContents'}">컨텐츠 추천</c:if>
						<c:if test="${record.ussrcategoryname=='recommand,recommandTips'}">꿀팁 추천</c:if>
					</td>
				</tr>
			</table>
			<table class="table table-bordered">
				<tr>
					<th class="text-center" colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2">
						${record.ussrcontent}
					</td>
				</tr>
			</table>
			<br/>
			<table style="width:200px; height:60px; line-height:60px; margin-left:auto; margin-right:auto;">
				<tr style="border:1px solid;">
					<td class="text-center col-md-2" style="line-height:60px; padding: 10px 0px 10px 10px;">
						<button type="button" class="btm_image">
							<img src="<%=request.getContextPath()%>/resources/images/recommend/Icon_recommend.png" alt="추천">
						</button>
					</td>
					<td class="text-center col-md-2" style="text-align:center; line-height:60px; font-size: 3em; padding: 10px 10px 10px 0px;">
						${record.likeno}
					</td>
				</tr>
			</table>
		</div>
	</div>
	<br/>
	<br/>
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<ul id="pillMenu" class="nav nav-pills center-block" style="width: 200px; margin-bottom: 10px">
				<c:if test="${sessionScope.email==record.email}">
					<li><a href="<c:url value='/recommandEdit.do?ussrno=${record.ussrno}'/>" class="btn btn-info">수정</a></li>
					<li><a href="javascript:isDelete();" class="btn btn-info">삭제</a></li>
				</c:if>
				<li><a href="<c:url value='/recommandList.do?nowPage=${param.nowPage}'/>" class="btn btn-info">목록</a></li>
			</ul>
		</div>
	</div>
	
	<!-- 한줄 코멘트 입력 폼-->
	<div class="row">
		<div class="col-md-12">
			<div class="text-center">
				<hr class="col-md-offset-2 col-md-8" style="width:725px"/>
				<div class="row">
					<div id="comments" class="col-md-offset-3 col-md-6">
						<c:if test="${not empty record.comments }">
							<h2>댓글 목록</h2>
							<table class='table table-bordered'>
								<tr>
									<th class='text-center col-md-2'>작성자</th>
									<th class='text-center'>코멘트</th>
									<th class='text-center col-md-2'>작성일</th>
									<th class='text-center col-md-2'>삭제</th>
								</tr>
								<tbody class="comment-title">
									<c:forEach var="comment" items="${record.comments}">
										<tr class="comment${comment.comno}">
											<td>${record.nickname}</td>
											<td style='cursor:pointer' class="title" title="${comment.comno}">${comment.comcontent}</td>
											<td>${comment.compostDate}</td>
											<td>
												<c:if test="${sessionScope.email==comment.email}" var="isOwn">
													<span class='delete' title='${comment.comno}' style="cursor: pointer">댓글 삭제</span>
												</c:if>
												<c:if test="${not isOwn}">
													삭제불가
												</c:if>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>
					</div>
				</div>
				<form class="form-inline" id="frm" action="<c:url value='/recommandView.do?ussrno=${record.ussrno}'/>">
					<input type="hidden" name="ussrno" value="${record.ussrno}" />
					<input type="hidden" name="comno" /> 
					<input placeholder="댓글을 입력하세요" id="title" class="form-control" type="text" size="50" name="comcontent" /> 
					<input class="btn btn-success" id="submit" type="button" value="등록" onclick="submit()"/>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
/*
	//ajax를 이용해서 페이지 로딩후 다시 서버에 현재 글번호에 대한 한줄 댓글 목록 요청
	showComments();
	
	function showComments(){
		$.ajax({
			url:'<c:url value="/commentList.do"/>',
			data:{"ussrno":"${record.ussrno}"},{"comno":"${comno}"}
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
			action="<c:url value="/commentWrite.do"/>";
		}
		else{
			action="<c:url value="/commentEdit.do"/>";
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
				//showComments();이래도 된다. 하지만 서버에 또 현재글에 대한 댓글 전체목록 요청하게 된다
				
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
	$(document).on('click','.title',function(){
		$('#title').val($(this).html());
		$('#submit').val("수정");
		$('input[name=comno]').val($(this).attr('title'));
	});
	
	//삭제 클릭시 삭제처리하기
	$(document).on('click','.delete',function(){
		var comno = $(this).attr('title').split(":")[0];
		if(confirm("정말로 삭제 하시겠습니까?")){
			//삭제 처리]
			$.ajax({
				url:"<c:url value="/commentDelete.do"/>",
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
	
	function isDelete(){
		if(confirm("정말로 삭제 하시겠습니까?")){
			location.replace("<c:url value="/recommandDelete.do?ussrno=${record.ussrno}"/>");
		}
	}
	
</script>
