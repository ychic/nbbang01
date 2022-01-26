<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>

<style>
.account-title{
	width:500px;
	font-family: 'Jua', sans-serif;
	font-size: 30px;
	font-weight: 500;
	margin:50px auto 20px auto;
}

.account-container{
	width:600px;
	height:800px;
	margin:0 auto 50px auto;
	border:none 1px #A1A1A1;
	border-radius:20px;
	overflow: auto;
	background-color:#d3d3d3;
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
	font-size: 18px;
	font-weight: 700;
}
.account-card{
	position:relative;
	width:300px;
	height:185px;
	border-radius:20px;
	text-align:center;
	line-height:30px;
	margin:50px auto 0px auto;
	background-color:#fff;
}
.accountNum, .bankName, .accountNickname{
	position:absolute;
	font-size: 18px;
}
.bankName{
	top:20px;
	right:10px;
	position:absolute;
}
.accountNum{
	top:80px;
	left:60px;
	position:absolute;
	font-size: 18px;
}
.accountNickname{
	top:140px;
	left:10px;
	position:absolute;
}

/* 스크롤바 영역 : 스크롤바가 사용되는 영역의 클래스지정 */
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
	<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">계좌등록</h1>
	<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">계좌를 등록하고 편하게 이용하세요.</h4>
	<hr class="col-md-12" style="width:900px;margin-left:50px;"/>

	<c:if test="${not empty sessionScope.email}" var="isLogin">
		<div class="account-title">
		'<span style="color:#f38181">${sessionScope.nickname}</span>' 님의 계좌 조회
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
	//
	function createCardDiv(){
		var accountContainer = document.getElementById("accountContainer");
		var accoundCard = `<div class="account-card" id="accoundCard">
								<div><img src="<%=request.getContextPath()%>/resources/account/credit1.png" style="width:48px; left:10px; top:10px; position:absolute;"></div>
										
										<div class="bankName" style="float:right">은행명</div>
										
										<div class="accountNum">0000-0000-0000-0000</div>
										
										<div class="accountNickname" style="float:left">계좌별칭</div>
										
								<div><img src="<%=request.getContextPath()%>/resources/account/credit2.png" style="width:60px; right:10px; bottom:10px; position:absolute;"></div>	
							</div>`
		
		accountContainer.innerHTML += accoundCard;
		accountContainer.appendChild(accoundCard);
		
		
	}
	
	//계좌 조회 메소드 (등록된 모든 계좌를 가져온다)
	/*
	function getAccount(){
		$.ajax({
            url: '<c:url value="/user/account.do"/>',
            type: 'GET',
            cache : false,
            data:{'email':'${sessionScope.email}'},
            dataType: 'json',
            success:function(data){
         	   		console.log('success진입');
                    // url을 담고 있음
                    console.log(data.Location);
                    console.log(data);
                    // 새창
                    tmpWindow = window.open(data.Location,"",'_blank,width=900,height=880,menubar=false');
                    //add(tmpWindow)
                    console.log('이벤트 생성')
                    tmpWindow.addEventListener('beforeunload',function(data){
                 	   console.log('꺼졌습니당!')
                 	   
                    })
                    
                    console.log('이벤트 생성완료')
                    
            },
            error:function(e){
                    console.log(e)
            }          
            
        });  
	}
	*/
	
	

</script>