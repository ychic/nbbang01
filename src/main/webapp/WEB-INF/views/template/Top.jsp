<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
	<meta name="copyright" content="ninodezign.com"> 
	<title>Nbbang | The new Wave of Subscription</title>
	
	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gugi&family=Jua&display=swap" rel="stylesheet">
	
	<!-- favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/ico/favicon.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=request.getContextPath()%>/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=request.getContextPath()%>/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=request.getContextPath()%>/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/resources/images/ico/apple-touch-icon-57-precomposed.png">
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/template.css" />
	
</head>
<style>
	.dropbtn {
	  color: white;
	  padding: 16px;
	  font-size: 13px;
	  border: none;
	  cursor: pointer;
	}
	
	.dropdown {
	  position: relative;
	  display: inline-block;
	}
	
	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #fff;
	  min-width: 160px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	  border-radius: 15px;
	}
	
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}
	
	.dropdown-content a:hover {
		background-color: #95e1d3;
		border-radius: 15px;
	}
	
	.dropdown:hover .dropdown-content {
	  display: block;
	}
	
	.dropdown:hover .dropbtn {
	  color: #fce38a;
	  border-color: #fce38a;
	  background: none;
	}
	.guide_menu, .login_menu{
		float:right;
	}
</style>
<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner">					
			<nav id="nino-navbar" class="navbar navbar-default" role="navigation">
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nino-navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="<c:url value="/index.do"/>" >Nbbang</a>
					</div>
					
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<!-- <li><a id="home" href="<c:url value='/index.do'/>">Home <span class="sr-only">(current)</span></a></li> -->
								<li><a id="admin" href="<c:url value='/admin.do'/>">admin</a></li>
								<li class="dropdown">
									<a class="dropbtn" onclick="location.href='party.do'">파티</a>
									  <div class="dropdown-content">
									    <a onclick="location.href='partyBbs.do'">파티원 구하기</a>
									    <a href="#">채팅</a>
									  </div>
								</li>
								<li class="dropdown">
									<a class="dropbtn" onclick="location.href='schedule.do'">My</a>
									  <div class="dropdown-content">
									    <a onclick="location.href='mySub.do'">my구독</a>
									    <a onclick="location.href='mySchedule.do'">my스케쥴</a>
									    <a onclick="location.href='myReport.do'">my리포트</a>
									    <a onclick="location.href='myParty.do'">my파티</a>
									  </div>
								</li>
								<li class="dropdown">
									<a class="dropbtn" onclick="location.href='recommand.do'">추천</a>
									  <div class="dropdown-content">
									    <a onclick="location.href='recommandBbs.do'">추천게시판</a>
									  </div>
								</li>
								<li class="login_menu" style="float:right"><a id="login" href="<c:url value='/login.do'/>">로그인</a></li>
								<li class="guide_menu" style="float:right"><a id="guide" href="<c:url value='/guide.do'/>">가이드</a></li>
								
							</ul>							
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>
		