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
					
				</div>
				<!-- Form -->
				<form class="px-3">
					<!-- Input Box -->
					
					
					<fieldset class="form-group">
				      <div class="form-check">
				        <label class="form-check-label">
				          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
				          남성
				        </label>
				      </div>
				      <div class="form-check">
				        <label class="form-check-label">
				          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2">
				          여성
				        </label>
				      </div>
				      
				    </fieldset>
				    
				    
					<!-- Register Button -->
		            <div class="mb-3"> 
						<button type="submit" class="btn btn-block" onclick="location.href='#'">다 음</button>
					</div>
					<!-- 
					<div class="text-center mb-2">
	                   	<div class="text-center mb-3" style="color: #777;">or register with</div>
		                   	
	                   	<!-- Facebook Button -->
	                <!--    	<a href="" class="btn btn-social btn-facebook"><i class="fa fa-facebook"></i></a>

                    	<!-- Google Button -->
					<!-- 	<a href="" class="btn btn-social btn-google"><i class="fa fa-google"></i></a>

						<!-- Twitter Button -->
					<!-- 	<a href="" class="btn btn-social btn-twitter"><i class="fa fa-twitter"></i></a>
					<!-- </div>-->
					<div class="text-center mb-5" style="color: #777;">이미 회원가입을 하셨나요?
						<a class="login-link" onclick="location.href='login.do'" style="cursor: pointer; color:#57b894">로그인하기 here</a>
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
