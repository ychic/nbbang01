<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 원페이지 대문 -->

<!DOCTYPE html>
<html lang="ko">
 <head>
  <meta charset="UTF-8">
  <title>nbbangOnePage</title>
  
  	<!-- css -->
	<link href="<%=request.getContextPath()%>/resources/loginmodal/assets/css/bootstrap.css" rel="stylesheet" />
	<link href="<%=request.getContextPath()%>/resources/loginmodal/assets/css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/template.css" />
	<script src="<%=request.getContextPath()%>/resources/loginmodal/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/resources/loginmodal/assets/js/bootstrap.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/resources/loginmodal/assets/js/login-register.js" type="text/javascript"></script>

<!--스크립트끝-->
 </head>

<!--스타일 영역-->
<style type="text/css">
	 *{
	 	margin:0; padding:0;
	 }
	 ul li{
	 	list-style:none;
	 }
	 #wrap{
	 	width:100%; height:3900px; position:absolute;  margin:0 auto;
	 }
	 #first-navbar-logo {
	 	width:100px;
	 	height:50px;
	 	position: absolute;
	 	margin-left:80px;
	 	margin-top:15px;
	 	font-family: 'Montserrat', sans-serif;
	    font-size: 20px;
	    font-weight: 700;
	    text-align:center;
	 	background-color:rgba(241, 114, 114, 0.96); 
	 	border-radius: 40px;
	 	line-height: 50px;
		z-index: 1;
	 }
	 #first-navbar-login {
	 	width:100px;
	 	height:50px;
	 	position: absolute;
	 	margin-left:1300px;
	 	margin-top:15px;
	 	font-family: 'Montserrat', sans-serif;
	    font-size: 20px;
	    font-weight: 700;
	 	background-color:rgba(241, 114, 114, 0.96); 
	 	text-align:center;
	 	border-radius: 40px;
	 	line-height: 50px;
	 	z-index: 1;
	 }
	 .contents{
	 	position: relative;
	 }
	 .contents > img{
	 	width:100%;
	 	height:800px; border:0;
	 }
	 .contents > img:hover {
	    opacity: 0.63;
     }
	/*button영역*/
	 .circle{
	 	position:fixed; 
	 	top:280px; 
	 	right:0; 
	 	margin-right:50px; 
	 	transition: all linear 0.1s;
	 }
	 #circle1{margin-top:0px;}
	 #circle2{margin-top:13px;}
	 #circle3{margin-top:13px;}
	 #circle4{margin-top:13px;}
	 #circle5{margin-top:13px;}
	
	/*푸터영역*/
	#footer{ 
		width:100%; 
		height:100px; 
		background: rgba(241, 114, 114, 0.96);
		color:#fff;
	}
	#company{
		font-size:15px; 
		font-weight:bold; 
		text-align:left; 
		margin-left:700px;
	}
	#companyInfo{
		text-align:center; 
		margin-left:450px; 
		margin-top:13px; 
		font-size:12px; 
		font-weight:800; 
		padding-bottom:2px; 
	}
</style>
<script type="text/javascript">
 
 $(function(){ //alert("ok");
 
	   $("nav a").click(function(){
           $.scrollTo(this.hash || 0,1000);
		   e.preventDefault();});
	   
 });
</script>

 <body>
  <div id ="wrap">
	<div class="onepage">
		<div id="contents1" class="contents">
			<div id="first-navbar-logo">
				<a href="<c:url value="/index.do"/>">Nbbang</a>
			</div>
			<div id="first-navbar-login">
				<a href="<c:url value='/login.do'/>">로그인</a>
			</div>
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first01.jpg"/>
		</div>
		<div id="contents2" class="contents">
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first02.jpg"/>
		</div>
		<div id="contents3" class="contents">
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first03.jpg"/>
		</div>
		<div id="contents4" class="contents">
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first04.jpg"/>
		</div>
		<div id="contents5" class="contents">
			<img src="<%=request.getContextPath()%>/resources/images/firstpage/first05.jpg"/>
		</div>
		
		<!--버튼영역-->
		<div class="circle">
			 <nav>
			     <div id="circle1">
				  <a href="#contents1">
				   <img src="<%=request.getContextPath()%>/resources/first/img/circle1.png" width="33" height="35" border="0" alt="#"></a>
				   </div>
				 <div id="circle2">
				  <a href="#contents2">
					<img src="<%=request.getContextPath()%>/resources/first/img/circle2.png" width="33" height="35" border="0" alt="#">
				  </a>
				  </div>
				 <div id="circle3">
				  <a href="#contents3">
					<img src="<%=request.getContextPath()%>/resources/first/img/circle3.png" width="33" height="35" border="0" alt="#">
				  </a>
				  </div>
				 <div id="circle4">
				  <a href="#contents4">
				  <img src="<%=request.getContextPath()%>/resources/first/img/circle4.png" width="33" height="35" border="0" alt="#"></a>
				  </div>
			     <div id="circle5">
				  <a href="#contents5"><img src="<%=request.getContextPath()%>/resources/first/img/circle5.png" width="33" height="35" border="0" alt="#"></a>
				  </div>
			  </nav>
		</div>
	</div>
	
		<!--footer-->
		<div id="footer">
			<span id="company">주식회사 엔빵</span></br>
			<span id="companyInfo">대표: 강현수,김수연,김준형,김형태,박재현,정윤식,최주원,황태환 | 주소: 서울시 금천구 가산동 426-5 월드메르디앙 2차 413호</span></br>
			<span id="companyInfo">통신 판매번호: 2021-서울금천-03031 | 사업자 등록번호: 108-22-10101 | 제휴 문의: kosmo@nbbang.com</span></br>
		</div>
	</div>
 </body>
</html>
