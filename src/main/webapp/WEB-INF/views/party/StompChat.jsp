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
<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js"></script>
<script type="text/javascript"
	src="<c:url value="resources/party/sockjs.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="resources/party/stomp.js"/>"></script>
<div class="container" style="height: 730px; padding-top: 25px;">

	<div class="page-header">
		<h1>채팅</h1>
	</div>
	<div class="row">
		<ul class="nav nav-pills nav-stacked col-sm-3"
			style="overflow: auto; height: 457px;">
			<c:if test="${not empty chatList}" var="emptyList">
				<c:forEach items="${chatList}" var="item">
					<li><a id="p_${item.partyno}_${item.chatno}">${pnickname.get(item.chatpartnerid)}님과
							채팅중입니다</a></li>
				</c:forEach>
			</c:if>
			<c:if test="${!emptyList}">
				<li><a href="#">채팅이 없습니다</a></li>
			</c:if>
		</ul>
		<div class="col-sm-9 row" hidden="true" id="chatDiv">
			<div class="col-md-12" style="padding-bottom: 5px">
				<div class="col-md-2" style="padding-top: 5px;">
					<h4>대화내용</h4>
				</div>
				<div class="col-md-offset-9" style="padding-left: 20px;">
					<button type="button" class="btn btn-danger">신고</button>
					<button id="confirm" type="button" class="btn btn-success" disabled="disabled">확정</button>
					<button type="button" class="btn btn-waring">나가기</button>
				</div>
			</div>
			<div class="col-md-12" style="padding-bottom: 5px;">
				<div class="col-md-2" style="width: 94px;">
					<img id="ottimg"
						alt="64x64" src="<c:url value="/resources/party/icons8-picture-64.png"/>"
						style="width: 64px; height: 64px;" hidden="true">
				</div>
				<div class="col-md-9">
					<h4 id="bbsTitle"></h4>
					<h4 id="leader"></h4>
				</div>
			</div>
			<div class="col-md-12">
				<div id="chatArea">
					<div id="chatMessage"
						style="height: 300px; border: 1px gray solid; overflow: auto"></div>
				</div>
			</div>
			<div class="col-md-12" style="padding-top: 5px; padding-bottom: 5px;">
				<div class="form-inline">
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
</div>
<script>
	$(function() {
		//sockJS 객체 저장용
		var sock;
		//Stomp 객체 저장용
		var client;
		//방 번호
		var roomNo;
		var prevRoomNo;
		//
		var partyNo;
		//사용자 별명
		var nickname = '${nickname}';
		var headers = {
			login : 'mylogin',
			passcode : 'mypasscode',
			// additional header
			'client-id' : 'my-client-id'
		};
		var count = 0;
		function connect() {
			sock = new SockJS("<c:url value='/endpoint'/>");
			client = Stomp.over(sock);
			//client.connect({}, function (frame) {
			//client.heartbeat.outgoing = 20000; // client will send heartbeats every 20000ms
			//client.heartbeat.incoming = 0;     // client does not want to receive heartbeats
			client.connect(headers, function(frame) {
				//console.log('connect:', frame);	        	        
			});
			setTimeout(function() {
				client.subscribe('/topic/message/' + roomNo, function(message) {
					showChat(JSON.parse(message.body));
				}, {
					"id" : nickname + '_' + roomNo
				});
			}, 500);
		}

		function showChat(message) {
			//console.log(message.nickname);
			//console.log(nickname);
			//if(! message.nickname == nickname){			
			$('#chatMessage').append(
					message.nickname + ">>" + message.message + "<br/>");
			//}
			$.ajax({
				url : "<c:url value="/message/saveMessage.do"/>",
				data : {
					"roomNo" : roomNo,
					"message" : $('#chatMessage').html()
				},
				type : 'post',
				dataType : 'text'
			}).done(function(data) {
				console.log(data);
			}).fail(
					function(req, error) {
						console.log('응답코드:%s,에러 메시지:%s,error:%s', req.status,
								req.responseText, error);
					});
		}

		//서버로 메시지 전송하는 함수]
		function sendMessage() {
			//서버로 메시지 전송
			client.send("/roomIn/" + roomNo, {}, JSON.stringify({
				"nickname" : nickname,
				"message" : $('#message').val(),
				"roomNo" : '' + roomNo
			}));
			//기존 메시지 클리어			
			$('#message').val("");
			//포커스 주기
			$('#message').focus();
		}

		//전송버튼 클릭시]
		$('#sendBtn').click(function() {
			sendMessage();
		});

		//메시지 입력후 전송 버튼 클릭이 아닌 엔터키 처리]
		$('#message').on('keypress', function(e) {
			//console.log('e.keyCode:%s,e.which:%s', e.keyCode, e.which);		
			var keyCode = e.keyCode ? e.keyCode : e.which;
			if (keyCode == 13) {//엔터 입력
				sendMessage();
			}
		});

		//입장버튼 클릭시 ]-서버와 연결된 웹소켓 클라이언트 생성
		$('body > div.container > div.row > ul > li > a').click(
				function(e) {
					e.preventDefault();
					$("#chatDiv").removeProp('hidden')
					roomNo = $(this).get(0).id.split('_')[2];
					partyNo = $(this).get(0).id.split('_')[1];
					if (count >= 1) {
						if (client != null) {
							/*client.send("/roomIn/" + roomNo, {}, JSON
									.stringify({
										"nickname" : nickname,
										"message" : "접속해제하였습니다",
										"roomNo" : '' + prevRoomNo
									}));*/
							client.disconnect(function() {
								$('#chatMessage').html("");
								console.log("연결종료");
							});
						}
					}
					prevRoomNo = roomNo
					count++;
					connect();
					$.ajax({
						url : "<c:url value="/message/getMessage.do"/>",
						data : {
							"roomNo" : roomNo,
							"partyNo" : partyNo
						},
						type : 'post',
						dataType : 'json'
					}).done(function(data) {
						//console.log(data);
						if (data != "fail")
							$('#chatMessage').append(data.message);
						console.log(data.partyBbs);
						$('#bbsTitle').text(data.partyBbs.partyTitle);
						$('#leader').text(data.partyBbs.nickname);
						switch(data.partyBbs.partyCategoryName){
							case '넷플릭스':
								$('#ottimg').attr({"src":'<c:url value="/resources/party/001_icon_netflix.png"/>', "hidden": false})
								break;
							case '왓챠':
								$('#ottimg').attr({"src":'<c:url value="/resources/party/002_icon_watcha.png"/>', "hidden": false})
								break;
							case '디즈니':
								$('#ottimg').attr({"src":'<c:url value="/resources/party/003_icon_disney.png"/>', "hidden": false})
								break;
							case '라프텔':
								$('#ottimg').attr({"src":'<c:url value="/resources/party/004_icon_laftel.png"/>', "hidden": false})
								break;
							case '티빙':
								$('#ottimg').attr({"src":'<c:url value="/resources/party/005_icon_tving.png"/>', "hidden": false})
								break;
							default:
								$('#ottimg').attr({"src":'<c:url value="/resources/party/006_icon_wavve.png"/>', "hidden": false})
						}
						if(data.partyBbs.email == '${email}')
							$('#confirm').removeProp('disabled');
					}).fail(
							function(req, error) {
								console.log('응답코드:%s,에러 메시지:%s,error:%s',
										req.status, req.responseText, error);
							});
					/*$('#chatMessage').append(roomNo + "번방과 연결되었습니다 <br/>");*/
					/*setTimeout(function() {
						client.send("/roomIn/" + roomNo, {}, JSON
								.stringify({
									"nickname" : nickname,
									"message" : "접속하였습니다",
									"roomNo" : '' + roomNo
								}));
					}, 500);*/
				});
	});
</script>