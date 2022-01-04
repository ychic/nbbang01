<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
  	<title>회원정보 찾기</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/login/css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/first/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="<c:url value="/resources/js/JQuery_js/jquery-3.6.0.min.js"/>"></script>
	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gugi&family=Jua&family=Montserrat:ital,wght@0,100;1,500&family=Nanum+Gothic&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
</head>
<style>
	body{
		font-family:'Nanum Gothic', sans-serif;
	}
	#first-navbar-logo {
	 	width:100px;
	 	height:50px;
	 	position: absolute;
	 	margin-left:80px;
	 	margin-top:15px;
	    font-size: 20px;
	    font-weight: bold;
	    text-align:center;
	 	background-color:rgba(241, 114, 114, 0.96); 
	 	border-radius: 40px;
	 	line-height: 50px;
	 	color:#fff;
		z-index: 1;
	 }
	 #first-navbar-login {
	 	width:100px;
	 	height:50px;
	 	position: absolute;
	 	margin-left:1300px;
	 	margin-top:15px;
	    font-size: 20px;
	    font-weight: bold;
	 	background-color:rgba(241, 114, 114, 0.96); 
	 	text-align:center;
	 	border-radius: 40px;
	 	line-height: 50px;
	 	z-index: 1;
	 	color:#fff;
	 }
	 .contents{
	 	position: relative;
	 }
	 
</style>

<!-- modal 시작 -->
<div class="modal" id="small-modal" style="font-family:'Jua', sans-serif;">
	<div class="modal-dialog modal-md" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">이메일 찾기</h5>
					<span aria-hidden="true"></span>
			</div>
			<div class="modal-body" id="modal-body">
			</div>
			<div class="modal-footer">
				<button type="button" id="okbutton" class="btn btn-primary" data-bs-dismiss="small-modal">확인</button>
			</div>
		</div>
	</div>
</div>
<!-- modal 끝 -->

<body class="img js-fullheight" style="background-image: url(resources/login/images/bg.jpg);">
	<div class="contents">
		<div id="first-navbar-logo">
			<a href="<c:url value="/index.do"/>" style="color:white; ">Nbbang</a>
		</div>
		<div id="first-navbar-login">
			<a href="<c:url value='/signup.do'/>" style="color:white;">회원가입</a>
		</div>
	</div>	
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Find your E-mail</h2>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
					
						<span id="errorMessage">${errorMessage}</span>
						
						<!-- 로그인 영역 -->
						<form action="#" id="frm" class="signin-form" method="post">
							<div class="form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="이름" required>
							</div>
							<span style="font-family:'Jua', sans-serif;">
								<img src="<%=request.getContextPath()%>/resources/images/nbbang/find_email_warning.png" style="width:24px;height:24px;"/>
								 010-1234-5678 형식으로 입력해 주세요.
							</span>
							<div class="form-group">
								<input type="text" class="form-control" id="tel" name="tel" placeholder="010-1234-5678" required>
							</div>
						</form>
							<div class="form-group">
								<button type="submit" id="btnFind" style="z-index:1"
									class="form-control btn btn-primary submit px-3">찾 기</button>
							</div>
						
						
						<!-- 소셜 로그인 영역 -->
						<p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
						<div class="social d-flex text-center">
							<a href="#" class="px-2 py-2 mr-md-1 rounded"><span
								class="ion-logo-facebook mr-2"></span> Kakao</a> 
								<a href="#" class="px-2 py-2 ml-md-1 rounded"><span
								class="ion-logo-twitter mr-2"></span> Goolge</a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<script>
		$(function(){
			$('#btnFind').click(function(){
				var name = $('#name').val();
				var tel = $('#tel').val();
				console.log(name,tel)
				
				$.ajax({
					url:"<c:url value="/findEmail.do"/>",
					type:"POST",
					dataType:'text',
					data:{name,tel},
					success:function(data){
						$('#small-modal').css('display','block');
						console.log(data)
						if(data==''){
							$('#modal-body').html("이름과 전화번호를 다시 확인해 주세요.");
						}
						else{
							$('#modal-body').html("당신의 이메일은 [ "+data+" ] 입니다.");	
						}
						
						$('#okbutton').on('click',function(){
							$('#small-modal').css('display','none');
						});
					 	
					},
					error:function(error){
						console.log('%O',error);
						console.log('에러:',error.responseText);
					}			
					
				});
			});
			
		});
		
	
	</script>
</body>
</html>


