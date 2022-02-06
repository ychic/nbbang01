<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</div>
</header>
<!--  
<script>
	$(function() {
		$('body').css('backgroundColor', '#F69E8F');
		$('footer').css('backgroundColor', '#F69E8F');
	});
</script>
-->
<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js"></script>
<script type="text/javascript"
	src="<c:url value="resources/party/sockjs.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="resources/party/stomp.js"/>"></script>
<style>
.account-container::-webkit-scrollbar {
	width: 15px;
}

.account-container::-webkit-scrollbar-thumb {
	background-color: #fff;
	border-radius: 10px;
	background-clip: padding-box;
	border: 2px solid transparent;
}

.account-container::-webkit-scrollbar-track {
	background-color: #f38181;
	border-radius: 10px;
	box-shadow: inset 0px 0px 5px white;
}

.message-you {
	position: relative;
	font-size: 1.4em;
	background-color: pink;
	padding-left: 10px;
	width: 45%;
	border-radius: 10px;
	margin-top: 5px;
	margin-left: 2%;
	text-align: left;
	color: black;
}

.message-you::after {
	content: '';
	position: absolute;
	left: -20px;
	top: 33%;
	border-top: 10px solid transparent;
	border-right: 10px solid pink;
	border-bottom: 10px solid transparent;
	border-left: 10px solid transparent;
}

.message-me {
	position: relative;
	font-size: 1.4em;
	background-color: #FA58F4;
	padding-right: 10px;
	width: 45%;
	border-radius: 10px;
	margin-left: 50%;
	margin-top: 5px;
	text-align: right;
	color: black;
}

.message-me::after {
	content: '';
	position: absolute;
	right: -20px;
	top: 33%;
	border-top: 10px solid transparent;
	border-right: 10px solid transparent;
	border-bottom: 10px solid transparent;
	border-left: 10px solid #FA58F4;
}
/* 광고 영역 */
.ad_one, .ad_two {
	background-color: red;
	width: 188.5px;
	height: 377px;
	display: inline-block;
	position: fixed;
	top: 150px;
	background-size: cover;
	background-position: center;
	background-image:
		url("<%=request.getContextPath()%>/resources/account/ad_1.PNG");
	animation: ad_one_ani 16s infinite;
}

.ad_one {
	left: 30px;
}

.ad_two {
	right: 30px;
}

@
keyframes ad_one_ani { 33%{
	background-image:
		url("<%=request.getContextPath()%>/resources/account/ad_2.PNG")
}
66
%
{
background-image
:
url("<%=request.getContextPath()%>/resources/account/ad_3.PNG")
}
100
%
{
background-image
:
url("<%=request.getContextPath()%>/resources/account/ad_1.PNG")
}
}
</style>
<!-- 광고 1 -->
<!--  
<div class="ad_one"></div>
-->
<div class="container" style="height: 730px; padding-top: 25px;">
	<div class="page-header">
		<h1>채팅</h1>
	</div>
	<div class="row">

		<ul class="nav nav-pills nav-stacked col-sm-3 account-container"
			style="height: 457px; overflow: auto;">
			<!--
		<ul class="list-group col-sm-offset-3 col-sm-6">
			<li class="list-group-item">채팅 리스트</li>
		-->
			<c:if test="${not empty chatList}" var="emptyList">
				<c:forEach items="${chatList}" var="item" varStatus="loop">
					<li class="list-group-item panel-danger">
						<a id="p_${item.partyno}_${item.chatno}">
							<c:if test="${not (pnickname.get(loop.index) eq 'null')}" var="ahtml">
								${pnickname.get(loop.index)}님과 채팅중입니다.
							</c:if>
							<c:if test="${not ahtml}">
								상대방이 나간 채팅입니다.
							</c:if>
						</a>
					</li>
				</c:forEach>
			</c:if>
			<c:if test="${!emptyList}">
				<li class="list-group-item panel-danger"><a href="#">채팅이
						없습니다</a></li>
			</c:if>
		</ul>
		<div class="col-sm-9 row" id="chatDiv">
			<!-- hidden="true" -->
			<div class="col-sm-12">
				<div class="col-sm-12"
					style="padding-bottom: 5px; border: 1px pink solid; border-bottom: none;">
					<div class="col-sm-3" style="padding-top: 5px;">
						<h4>대화내용</h4>
					</div>
					<div class="col-sm-9 text-right" style="padding-top: 5px;">
						<button id="report" type="button" class="btn btn-danger"
							disabled="disabled">신고</button>
						<button id="confirm" type="button" class="btn btn-success"
							disabled="disabled">확정</button>
						<button id="quit" type="button" class="btn btn-waring"
							disabled="disabled">나가기</button>
					</div>
				</div>
				<div class="col-sm-12"
					style="padding-top: 5px; padding-bottom: 5px; border: 1px pink solid; border-top: none;">
					<div class="col-sm-2" style="width: 94px;">
						<img id="ottimg" alt="64x64"
							src="<c:url value="/resources/party/icons8-picture-64.png"/>"
							style="width: 64px; height: 64px;">
						<!-- hidden="true" -->
					</div>
					<div class="col-sm-9">
						<h4 id="bbsTitle">왼쪽 리스트에서 원하는</h4>
						<h4 id="leader">채팅을 눌러 채팅을 시작하세요</h4>
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<div id="chatArea">
					<div id="chatMessage" class="account-container"
						style="height: 350px; border: 1px pink solid; overflow-y: auto;">

					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-inline" style="width: 100%;">
					<div class="form-group" style="width: 100%;">
						<div class="input-group" style="width: 100%;">
							<input style="width: 100%; border: 1px pink solid" type="text"
								class="form-control" id="message" placeholder="메시지를 입력해주세요"
								disabled="disabled">
							<div style="width: 10%; border: 1px pink solid;"
								disabled="disabled" class="input-group-addon btn" type="button"
								id="sendBtn">전송</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 광고 2 -->
<!--  
<div class="ad_two"></div>
-->
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
		var isBbsWriter;
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
			if(message.nickname == nickname){
				$('#chatMessage').append(
					'<div class="message-me">'+
						'<p>'+message.nickname+' <small>'+message.time+'</small></p>'+
						'<p>'+message.message+'</p>'+
					'</div>'
				);
			}else{
				$('#chatMessage').append(
						'<div class="message-you">'+
							'<p>'+message.nickname+' <small>'+message.time+'</small></p>'+
							'<p>'+message.message+'</p>'+
						'</div>'
					);
			}
			if (message.message == '파티원으로 확정되셨습니다.') {
				$('#confirm').prop("disabled", "disabled");
				$('#quit').prop("disabled", "disabled");
			}
			if (message.message == '채팅을 나갔습니다.') {
				$('#confirm').prop("disabled", "disabled");
				var str = '#p_'+partyNo+'_'+roomNo;
				$(str).html('상대방이 나간 채팅입니다.');
			}
			$.ajax({
				url : "<c:url value="/message/saveMessage.do"/>",
				data : {
					"nickname" : message.nickname,
					"message" : message.message,
					"roomNo" : message.roomNo,
					"time" : message.time
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
			var today = new Date();		
			var sendTime = today.getHours()+':'+today.getMinutes();
			//서버로 메시지 전송
			client.send("/roomIn/" + roomNo, {}, JSON.stringify({
				"nickname" : nickname,
				"message" : $('#message').val(),
				"roomNo" : '' + roomNo,
				"time" : sendTime
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
			console.log('e.keyCode:%s,e.which:%s', e.keyCode, e.which);
			var keyCode = e.keyCode ? e.keyCode : e.which;
			if (keyCode == 13) {//엔터 입력
				sendMessage();
			}
		});

		//채팅방 나가기
		$('#quit').click(function(e) {
			var today = new Date();			
			var sendTime = today.getHours()+':'+today.getMinutes();
			client.send("/roomIn/" + roomNo, {}, JSON.stringify({
				"nickname" : nickname,
				"message" : '채팅을 나갔습니다.',
				"roomNo" : '' + roomNo,
				"time" : sendTime
			}));
			var sendData;
			if (isBbsWriter) {
				sendData = {
					"roomNo" : roomNo,
					'bbswriter' : '${email}'
				};
			} else {
				sendData = {
					"roomNo" : roomNo,
					'participant' : '${email}'
				};
			}
			$.ajax({
				url : "<c:url value="/roomout/quit.do"/>",
				data : sendData,
				type : 'post'
			}).done(function() {
				client.disconnect(function() {
					console.log("연결종료");
					location.replace('<c:url value="/partyChat.do"/>');
				});
				//location.reload();
			});
		});

		$('#confirm').click(function() {
			var today = new Date();
			var sendTime = today.getHours()+':'+today.getMinutes(); 
			client.send("/roomIn/" + roomNo, {}, JSON.stringify({
				"nickname" : nickname,
				"message" : '파티원으로 확정되셨습니다.',
				"roomNo" : '' + roomNo,
				"time" : sendTime
			}));
			$.ajax({
				url : "<c:url value="/partybbs/addMember.do"/>",
				data : {
					"roomNo" : '' + roomNo,
					"partyNo" : '' + partyNo
				},
				type : 'post'
			}).done(function(data) {
				alert(data);
				if (data == '파티원을 모두 모았습니다.') {
					location.href = '<c:url value="/partyBbs.do"/>';
				}
			}).fail(function(e) {
				console.log(e)
			});
		});

		//입장버튼 클릭시 ]-서버와 연결된 웹소켓 클라이언트 생성
		$('body > div.container > div.row > ul > li > a')
				.click(
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
							$
									.ajax(
											{
												url : "<c:url value="/message/getData.do"/>",
												data : {
													"roomNo" : roomNo,
													"partyNo" : partyNo
												},
												type : 'post',
												dataType : 'json'
											})
									.done(
											function(data) {												
												if (data.message != "fail") {														
													var jsonStr = JSON.parse(data.message);
													$.each(jsonStr, function(index, element) {
														console.log(element)
														if(element.nickname == nickname){
															$('#chatMessage').append(
																'<div class="message-me">'+
																	'<p>'+element.nickname+' <small>'+element.time+'</small></p>'+
																	'<p>'+element.message+'</p>'+
																'</div>'
															);
														}else{
															$('#chatMessage').append(
																	'<div class="message-you">'+
																		'<p>'+element.nickname+' <small>'+element.time+'</small></p>'+
																		'<p>'+element.message+'</p>'+
																	'</div>'
																);
														}
													});
													$("#chatMessage").scrollTop($("#chatMessage")[0].scrollHeight);
												}

												console.log(data.partyBbs);
												$('#bbsTitle').text('글 제목:'+data.partyBbs.partyTitle);
												$('#leader').text('글작성자:'+data.partyBbs.nickname);
												switch (data.partyBbs.partyCategoryName) {
												case 'netflix':
													$('#ottimg')
															.attr(
																	{
																		"src" : '<c:url value="/resources/party/001_icon_netflix.png"/>',
																		"hidden" : false
																	})
													break;
												case 'whtcha':
													$('#ottimg')
															.attr(
																	{
																		"src" : '<c:url value="/resources/party/002_icon_watcha.png"/>',
																		"hidden" : false
																	})
													break;
												case 'disney':
													$('#ottimg')
															.attr(
																	{
																		"src" : '<c:url value="/resources/party/003_icon_disney.png"/>',
																		"hidden" : false
																	})
													break;
												case 'laftel':
													$('#ottimg')
															.attr(
																	{
																		"src" : '<c:url value="/resources/party/004_icon_laftel.png"/>',
																		"hidden" : false
																	})
													break;
												case 'tving':
													$('#ottimg')
															.attr(
																	{
																		"src" : '<c:url value="/resources/party/005_icon_tving.png"/>',
																		"hidden" : false
																	})
													break;
												default:
													$('#ottimg')
															.attr(
																	{
																		"src" : '<c:url value="/resources/party/006_icon_wavve.png"/>',
																		"hidden" : false
																	})
												}
												$('#sendBtn').removeAttr(
														"disabled");
												$('#message').removeAttr(
														"disabled");
												$('#report').removeAttr(
													"disabled");
												if (data.partyBbs.email == '${email}') {
													isBbsWriter = true;
												}
												console
														.log(data.isMePartyMember)
												console
														.log(data.partnerIsPartyMember)
												if (data.isMePartyMember == '맞다_파티장') {
													if (data.partnerIsPartyMember == '아니다') {
														$('#confirm')
																.removeAttr(
																		"disabled");
														$('#quit').removeAttr(
																"disabled");
													} else {
														$('#confirm').attr('disabled', "disabled");
														$('#quit').attr('disabled', "disabled");
													}
												} else if (data.isMePartyMember == '맞다_멤버') {
													$('#confirm').attr('disabled', "disabled");
													$('#quit').attr('disabled', "disabled");
												} else {
													$('#quit').removeAttr("disabled");
												}
											})
									.fail(
											function(req, error) {
												console
														.log(
																'응답코드:%s,에러 메시지:%s,error:%s',
																req.status,
																req.responseText,
																error);
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