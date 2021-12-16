<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link href="<%=request.getContextPath()%>/resources/first/style.css" rel="stylesheet">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gugi&family=Jua&family=Montserrat:wght@100&family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>


<body style="background-color:#fce38a;">
	<div class="container infinity-container">
		<div class="row">
			<div class="col-md-1 infinity-left-space"></div>
			
			<!-- FORM BEGIN -->
			<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 text-center infinity-form">
				<!-- Company Logo -->
				<div class="text-center mb-3 mt-5" style="font-family: 'Gugi', sans-serif;font-size:50px;font-weight: bold;">
					Nbbang
				</div>
				<div class="text-center mb-4">
					<h4>Login</h4>
				</div>
				<!-- Form -->
				<form class="px-3">
					<!-- Input Box -->
					<div class="form-input">
						<span><i class="fa fa-envelope"></i></span>
						<input type="email" name="" placeholder="Email" tabindex="10"required>
					</div>
					<div class="form-input">
						<span><i class="fa fa-lock"></i></span>
						<input type="password" name="" placeholder="Password" required>
					</div>
					<div class="row mb-3">
						<!-- Remember Box -->
			            <div class="col-auto d-flex align-items-center">
			                <div class="custom-control custom-checkbox">
			                    <input type="checkbox" class="custom-control-input" id="cb1">
			                   	<label class="custom-control-label" for="cb1" style="font-family: 'Nanum Gothic', sans-serif;font-size:13px;">아이디 저장</label>
			                </div>
				        </div>
			   	    </div>
			   	    <!-- Login Button -->
		            <div class="mb-3"> 
						<button type="submit" class="btn btn-block" onclick="location.href='index.do'">로그인</button>
					</div>
					<div class="text-right ">
		                <a href="reset.html" class="forget-link" style="font-family: 'Nanum Gothic', sans-serif;font-size:13px;">비밀번호를 잊어버렸나요?</a>
		            </div>
					<div class="text-center mb-2">
	                   	<div class="text-center mb-3" style="color: #777;font-family: 'Montserrat', sans-serif;font-weight: bold;">or login with</div>
		                   	
	                   	<!-- Facebook Button -->
	                   	<a href="" class="btn btn-social btn-facebook"><i class="fa fa-facebook"></i></a>

                    	<!-- Google Button -->
						<a href="" class="btn btn-social btn-google"><i class="fa fa-google"></i></a>

						<!-- Twitter Button -->
						<a href="" class="btn btn-social btn-twitter"><i class="fa fa-twitter"></i></a>
					</div>
					<div class="text-center mb-5" style="color: #777;" style="font-family: 'Nanum Gothic', sans-serif; font-size:8px;">아직 엔빵 회원이 아니신가요?
						<a class="register-link" onclick="location.href='register.do'" style="cursor: pointer; color:#57b894">회원가입하기 here</a>
			       	</div>
			       	<div >
						<a class="register-link" onclick="location.href='first.do'" style="cursor: pointer; color:#57b894">메인화면가기 here</a>
			       	</div>
				</form>
			</div>
			<!-- FORM END -->
	
			<div class="col-md-1 infinity-right-space"></div>
		</div>
	</div>

</body>
</html>

