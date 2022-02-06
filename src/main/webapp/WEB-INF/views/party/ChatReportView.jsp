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

<div class="container" style="height: 730px; padding-top: 25px;">
			<div class="col-sm-12 row" id="chatDiv">
			<!-- hidden="true" -->
			<div class="col-sm-12">
				<div class="col-sm-12"
					style="padding-bottom: 5px; border: 1px pink solid; border-bottom: none;">
					<div class="col-sm-7" style="padding-top: 5px;">
						<h4>신고대상자: ${map.get('reportId') eq record.participant ? record.bbswriter : record.participant}, 닉네임: ${reportIdNick}</h4>
					</div>
					<div style="padding-top: 5px;">
						<button id="report" type="button" class="btn btn-danger"
							>정지</button>						
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
		</div>
	</div>
</div>

<script type="text/javascript">
$(function() {
	var jsonStr = JSON.parse('${message}');
	$.each(jsonStr, function(index, element) {
		console.log(element)
		if(element.nickname != '${reportIdNick}'){
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
	
	$('#report').click(function() {
		location.replace("<c:url value='/partyBlackMember.do?email='/>"+"${map.get('reportId') eq record.participant ? record.bbswriter : record.participant}");
	});
});
</script>