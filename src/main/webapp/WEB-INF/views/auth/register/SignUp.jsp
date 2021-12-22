<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
  	<title>회원가입</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/signup/css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gugi&family=Jua&family=Montserrat:wght@100&family=Nanum+Gothic&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="/dist/mc-calendar.min.css" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script src="<c:url value='/resources/js/JQuery_js/jquery-3.6.0.min.js'/>"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

</head>
<style>
	#my-btn-signup{
		padding:10px;
	}
	.ftco-section {
  		padding: 3em 0; 
  	}
  	#datepicker{
  		margin-top:10px;
  	}
</style>

	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrap d-md-flex">
						<div class="text-wrap p-4 p-lg-5 d-flex img" style="background-image: url(resources/login/images/bg2.jpg);">
							<div class="text w-100">
								<h2 class="mb-4">엔빵에 오신 걸 환영합니다 :-)</h2>
								<p>구독 서비스들을 편하게 관리하고, </br>OTT서비스를 나눠 볼 친구를 구하세요.</p>
							</div>
			      		</div>
						<div class="login-wrap p-4 p-md-5" id="signup-wrap">
				      	<div class="row justify-content-center py-md-5">
				      		<div class="col-lg-9">
				      			<form action="#" class="signup-form">
										<div class="row">
											<div class="col-md-10">
												<div class="form-group">
													<input type="text" class="form-control" placeholder="이름" name="name"
														id="inputDefault">
												</div>
											</div>
											<div class="col-md-10">
												<div class="input-group mb-3">
													<input type="text" class="form-control" placeholder="닉네임" name="nickname">&nbsp;
													<button class="btn btn-primary" type="button"
														id="button-addon2">중복확인</button>
												</div>
											</div>
											<div class="col-md-10">
												<div class="input-group mb-3">
													<input type="text" class="form-control"
														name="email" placeholder="example@google.com">&nbsp;
													<button class="btn btn-primary" type="button"
														id="button-addon2">인증</button>
												</div>
											</div>
											<div class="col-md-10">
												<div class="input-group mb-3">
													<label class="col-form-label mt-4" for="inputDefault"></label>
													<input type="password" class="form-control"
														name="password" placeholder="비밀번호" id="inputDefault">
												</div>
											</div>
											<div class="col-md-10">
												<div class="input-group mb-3">
													<input type="password" class="form-control"
														placeholder="비밀번호 확인" name="">&nbsp;
													<button class="btn btn-primary" type="button"
														id="button-addon2">확인</button>
												</div>
											</div>
											<div class="col-md-10">
												<div class="form-group">
													<input type="text" class="form-control" placeholder="전화번호"
														name="tel" id="inputDefault">
												</div>
											</div>
											<div class="col-md-10">
												<div class="custom-radio-label">
													<label class="label" for="name">성별</label></br> 
													<input type="radio" class="custom-radio" name="gender"
														id="optionsRadios1" checked="">남자 
														<input type="radio" class="custom-radio" name="gender"
														id="optionsRadios2" checked="">여자
												</div>
											</div>

											<div class="col-md-9">
												<div class="form-group">
													<input type="text" class="form-control" id="datepicker"
														name="birthdate" placeholder="생년월일" id="inputDefault">
												</div>
											</div>

											<div class="col-md-12 my-4">
												<div class="form-group">
													<div class="w-100">
														<label class="checkbox-wrap checkbox-primary">회원가입 약관에 동의합니다. 
															<input type="checkbox" checked> 
															<span class="checkmark"></span>
														</label>
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group" id="my-btn-signup">
													<button type="submit" class="btn btn-primary submit p-3">가입하기</button>
												</div>
											</div>
										</div>
									</form>
					          <div class="w-100">
									<p class="mt-4">I'm already a member! <a href="<c:url value="/login.do"/>">로그인</a></p>
					          </div>
			      		</div>
			      	</div>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script>
		//생년월일 달력
		$(function(){
			 var date = new Date();
			 $("#datepicker").datepicker({
				dateFormat:"yy년 mm월 dd일",
				showOtherMonths: true,
				monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		        showMonthAfterYear: true,
		        yearSuffix: '년',
				buttonImage: "<c:url value="resources/images/calendar.png"/>",
				buttonText:"생년월일 선택",
				showOn:"both",
				buttonImageOnly:true,
				changeMonth: true,
			    changeYear: true,
			    showButtonPanel: true
			});	
			$('.ui-datepicker-trigger').css({height:'30px', cursor: 'Pointer'});
		});
		
</script>
	</body>
</html>

