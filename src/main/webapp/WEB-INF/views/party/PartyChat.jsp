<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</div>
</header>
<script>
	$(function() {
		$('body').css('backgroundColor', '#F69E8F');
		$('footer').css('backgroundColor', '#F69E8F');
	});
</script>
<div class="container" style="height: 730px; padding-top: 25px;">

	<div class="page-header">
		<h1>채팅</h1>
	</div>
	<div class="row">
		<ul class="nav nav-pills nav-stacked col-sm-3"
			style="overflow: auto; height: 457px;">
			<c:if test="${not empty chatList}" var="emptyList">
				<c:forEach items="${chatList}" var="item">
					<li><a id="${item.partyno}">${nickname.get(item.chatpartnerid)}님과 채팅중입니다</a></li>
				</c:forEach>
			</c:if>
			<c:if test="${!emptyList}">
				<li><a href="#">채팅이 없습니다</a></li>
			</c:if>
		</ul>
		<div class="col-sm-9 row">
			<div class="col-md-12" style="padding-bottom: 5px">
				<div class="col-md-2" style="padding-top: 5px;">
					<h4>대화내용</h4>
				</div>
				<div class="col-md-offset-9" style="padding-left: 20px;">
					<button type="button" class="btn btn-danger">신고</button>
					<button type="button" class="btn btn-success">확정</button>
					<button type="button" class="btn btn-waring">나가기</button>
				</div>
			</div>
			<div class="col-md-12" style="padding-bottom: 5px">
				<div class="col-md-2">
					<a href="#"> <img alt="64x64"
						src="<c:url value="/resources/party/netflix.png"/>"
						style="width: 100%; height: 64px;">
					</a>
				</div>
				<div class="col-md-9">
					<h4>1. Middle aligned media</h4>					
					<h4>Middle aligned mediaa</h4>
				</div>
			</div>
			<div class="col-md-12">
				<div id="chatArea">
					<div id="chatMessage"
						style="height: 300px; border: 1px gray solid; overflow: auto"></div>
				</div>
			</div>
			<div class="col-md-12" style="padding-top: 5px; padding-bottom: 5px;">
				<form class="form-inline">
					<div class="form-group">
						<input class="btn btn-info" type="button" id="sendImgBtn"
							value="이미지전송">
					</div>
					<div class="form-group"
						style="width: 80%; margin-left: 3px; margin-right: 3px;">
						<label class="sr-only" for="message">메시지</label> <input
							style="width: 100%;" class="form-control" type="text"
							id="message" placeholder="메시지를 입력해주세요" />
					</div>
					<div class="form-group">
						<input class="btn btn-success" type="button" id="sendBtn"
							value="전송">
					</div>
				</form>
			</div>
		</div>
	</div>

</div>
<script>
$(function(){
	/*
	채팅 테스트
	localhost를 아이피로 변경 소스 및 브라우저 URL도 변경
	그리고 인바운드 규칙추가 8080
	 */
	//웹소켓 객체 저장용
	var wsocket;
	//닉 네임 저장용
	var nickname;
	//입장버튼 클릭시 ]-서버와 연결된 웹소켓 클라이언트 생성
	$('a').click(
			function(e) {
				e.preventDefault();				
				wsocket = new WebSocket("ws://localhost:9575<c:url value="/chat-ws.do"/>?partyno="+$(this).get(0).id);
				console.log('wsocket:', wsocket);
				//서버와 연결된 웹 소켓에 이벤트 등록
				wsocket.onopen = open;
				wsocket.onclose = function() {
					appendMessage("연결이 끊어 졌어요");
				};
				wsocket.addEventListener("message", receiveMessage);
				wsocket.onerror = function(e) {
					console.log('에러발생:', e)
				};
			});
	//퇴장버튼 클릭시]
	/*$('#exitBtn').one('click', function() {
		wsocket.send('msg:' + nickname + '가(이) 퇴장 했어요');
		wsocket.close();
	});*/

	//전송버튼 클릭시]
	$('#sendBtn').click(function() {
		sendMessage();
	});
	//메시지 입력후 전송 버튼 클릭이 아닌 엔터키 처리]
	$('#message').on('keypress', function(e) {
		console.log('e.keyCode:%s,e.which:%s', e.keyCode, e.which);		
		var keyCode = e.keyCode ? e.keyCode : e.which;
		if (keyCode == 13) {//엔터 입력
			sendMessage();

		}

	});
	//함수 정의]
	//서버에 연결되었을때 호출되는 콜백함수
	var open = function() {
		//서버로 연결한 사람의 정보(닉네임) 전송
		//msg:kim가(이) 입장했어요
		//사용자가 입력한 닉네임 저장
		nickname = '${myNickName}';
		wsocket.send('msg:' + nickname + "가(이) 입장했어요");
		appendMessage("연결되었어요");
	}
	//메시지를 DIV태그에 뿌려주기 위한 함수]
	var appendMessage = function(msg) {
		$('#chatMessage').append(msg + "<br/>");
	};
	//서버에서 메시지를 받을때마다 호출되는 함수 
	var receiveMessage = function(e) {//e는 message이벤트 객체
		//서버로부터 받은 데이타는 이벤트객체(e).data속성에 저장되어 있다
		if (e.data.substring(0, 4) == 'msg:')
			appendMessage(e.data.substring(4));//서버로부터 받은 메시지를 msg:부분을 제외하고 div에 출력
	};
	//서버로 메시지 전송하는 함수]
	function sendMessage() {
		//서버로 메시지 전송
		wsocket.send("msg:" + nickname + '>>' + $('#message').val());//msg:Superman:안녕
		//DIV(대화영역)에 메시지 출력
		appendMessage($('#message').val());
		//기존 메시지 클리어			
		$('#message').val("");
		//포커스 주기
		$('#message').focus();
	}
});
</script>