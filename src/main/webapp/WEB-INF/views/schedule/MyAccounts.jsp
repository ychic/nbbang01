<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>

<style>
.account-title{
	width:500px;
	font-family: 'Jua', sans-serif;
	font-size: 25px;
	font-weight: 500;
	margin:50px auto 20px auto;
}

.account-container{
	width:500px;
	height:800px;
	margin:0 auto 50px auto;
	border:none 1px #A1A1A1;
	border-radius:20px;
	overflow: auto;
	background-color:#95e1d3;
}
.account-new{
	width:300px;
	height:100px;
	border:dashed 3px #A1A1A1;
	border-radius:20px;
	text-align:center;
	line-height:100px;
	margin:50px auto 0px auto;
	background-color:#fff;
}
.account-new-word{
	font-family: 'Montserrat', sans-serif;
	font-size: 20px;
	font-weight: 700;
}
.account-card{
	width:300px;
	height:185px;
	border:solid 2px #A1A1A1;
	border-radius:20px;
	text-align:center;
	line-height:100px;
	margin:50px auto 0px auto;
	background-color:#fff;
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

<!-- 본문 -->
<div class="container">

	<c:if test="${not empty sessionScope.email}" var="isLogin">
		<div class="account-title">
		'<span style="color:#f38181">${sessionScope.email}</span>' 님의 계좌 조회
		</div>
	</c:if>

	<div class="account-container" id="accountContainer">
		<div class="account-new">
			<span class="account-new-word">
				<a href="javascript:createCardDiv()">
					<img src="<%=request.getContextPath()%>/resources/account/plus-icon.png" id="getAjax"></a>
					계좌 등록
			</span>
			<input type="hidden" id="location" value="http://localhost:9570/nbbang/callback/url.do">
		</div>
	</div>
	
</div>

<!-- 광고 2 -->
<div class="ad_two">
	
</div>

<script>
	//동적 div
	function createCardDiv(){
		var accountContainer = document.getElementById("accountContainer");
		var accoundCard = `<div class="account-card" id="accoundCard">
								<span class="account-new-word">카드1</span>
							</div>`
		
		accountContainer.innerHTML += accoundCard;
		accountContainer.appendChild(accoundCard);
		
		
	}
	
	//계좌 인증을 위한 본인 인증, 계좌 추가 요청하는 ajax 
	//실행 되면 url을 주는데 윤식님이 주심 
	//콜백 url 
	$("#getAjax").on('click',function(){
          console.log("Ajax 수행")
          console.log('타겟 요청','<c:url value="/user/auth.do"/>')
          $.ajax({
               url: '<c:url value="/user/auth.do"/>',
               type: 'GET',
               cache : false,
               data:{location:$('#location').val()},
               dataType: 'json',
               success:function(data){
            	   		console.log('success진입');
                       // url을 담고 있음
                       console.log(data.Location);
                       //
                       var tmpWindow=window.open(data.Location,"",'_blank,width=900,height=880,menubar=false')
                       
               },
               error:function(e){
                       console.log(e)
               }
                                 
           })
                                    
     })
	
	

</script>