<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</div>
</header>

	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/modernizr.custom.97074.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/unslider-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/template.js"></script>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<!--sortable()적용해보려고 가져왔-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/first/style.css">
	
	
	<!-- jQuery사용을 위한 라이브러리 임베딩-->
	<!-- 1]다운받은  .js파일 임베디드 -->
	<!--  
	<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
	-->
	<!-- 2]CDN(Content Deliver Network)주소 사용 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<!-- sortable()적용해보려고 가져왔는데 주석풀면 다른기능(호버, 수연님구현셀렉 안보임)
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	  -->
<!--  
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
-->

<div class="container">
	<div class="row">
		<div class="col-sm-3">
			<div class="row">
				<div class="col-sm-12"></div>
				<div class="col-sm-10">
					<div class="list-group">
					   <a href="#" class="list-group-item active">Folder${folder.email}</a>
					   
					   <a href="#" class="list-group-item">
					   
					   <form id="frmFldrName">
					   <input id="newinput" type="text" name="sfname" style="border: none; width: 110px;" placeholder="New" />
					   <span class="glyphicon glyphicon-plus" id="btnNwFldr" aria-hidden="true" style="padding-left: 40px"></span>
					   </form>
					   </a>
					   
					   <!-- 필수 폴더(수정/삭제 불가)--> 
					   <a href="<c:url value='/mySub.do' />" class="list-group-item" id="dFolder1">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span>${folder.sfname}</span><span class="badge bg-primary rounded-pill">14</span></a>
					   
					   
					   <!-- 기본 폴더1(수정/삭제 가능)================================================================--> 
					   <a href="<c:url value='/secondFold.do' />" class="list-group-item" id="dFolder2">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="dfdn1" style="padding: 0px; margin: 0px;">Watch</span>
						   <form id="frmEditname1">
						   <input type="text" id="inp1" name="dfldrName2" style="width:90px; border: none; display: none;">
						   </form>
					   <span id="hvDotDFolder2" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">3</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnDFolder2" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp1" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit1" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 기본 폴더2(수정/삭제 가능)================================================================--> 
					   <a href="<c:url value='/thirdFold.do' />" class="list-group-item" id="dFolder3">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="dfdn2" style="padding: 0px; margin: 0px;">${folderName.sfname}</span>
						   <form id="frmEditname2">
						   <input type="text" id="inp2" name="dfldrName3" style="width:90px; border: none; display: none;">
						   </form>
					   <span id="hvDotDFolder3" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">7</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnDFolder3" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp2" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit2" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 생성 폴더1(수정/삭제 가능)================================================================--> 
					   <a href="#" class="list-group-item" id="hidFldr1" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="firF" style="padding: 0px; margin: 0px;">new1</span>
					   		<form id="frmEditname3">
						   	<input type="text" id="inp3" name="hfldrName1" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder1" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr1" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp3" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit3" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
 					   <!-- 생성 폴더2(수정/삭제 가능)================================================================--> 
					   <a href="#" class="list-group-item" id="hidFldr2" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="secF" style="padding: 0px; margin: 0px;">new2$</span>
					   		<form id="frmEditname4">
						   	<input type="text" id="inp4" name="hfldrName2" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder2" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr2" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp4" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit4" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 생성 폴더3(수정/삭제 가능)================================================================-->
					   <a href="#" class="list-group-item" id="hidFldr3" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="thrF" style="padding: 0px; margin: 0px;">new3</span>
					   		<form id="frmEditname5">
						   	<input type="text" id="inp5" name="hfldrName3" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder3" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr3" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp5" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit5" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 생성 폴더4(수정/삭제 가능)================================================================-->
					   <a href="#" class="list-group-item" id="hidFldr4" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="forF" style="padding: 0px; margin: 0px;">new4</span>
					   		<form id="frmEditname6">
						   	<input type="text" id="inp6" name="hfldrName4" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder4" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr4" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp6" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit6" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   <!-- 생성 폴더5(수정/삭제 가능)================================================================-->
					   <a href="#" class="list-group-item" id="hidFldr5" style="visibility: hidden;">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="fifF" style="padding: 0px; margin: 0px;">new5</span>
					   		<form id="frmEditname7">
						   	<input type="text" id="inp7" name="hfldrName5" style="width:90px; border: none; display: none;">
						  	</form>
					   <span id="hvDotHFolder5" class="glyphicon glyphicon-option-horizontal" aria-hidden="true" style="padding-left: 15px; color:aqua; visibility:hidden;"></span>
					   <span class="badge bg-primary rounded-pill">0</span></a>
					   <!-- optionBtn -->
					   <a href="#" id="btnHidFldr5" class="list-group-item optionBtn" style="background-color: silver; display: none; padding: 0px; margin: 0px;">
					   	<div class="row" style="padding: 0px; margin: 0px;">
					   		<div class="col-sm-4" style="background-color: blue; padding: 0px; margin-right: 0px;"><button id="btnComp7" type="button" class="btn btn-primary" style="width: 100%; height: 100%;">완료</button></div>
					   		<div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button 		type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
					   		<div class="col-sm-4" style="background-color: lime; padding: 0px; margin-right: 0px;"><button id="btnEdit7" type="button" class="btn btn-warning" style="width: 100%; height: 100%;">수정</button></div>
					   	</div>
 					   </a>
					   
					   <script>
							//function fnNwFldr() {
								//visible	
							//return console.log("ok");
							//}
							var input=document.getElementById('newinput');
							function noSpaceForm(input){
								var str_space = /\s/;               // 공백 체크
					            if(str_space.exec(input.value)) 
					            {     // 공백 체크
					                alert("공백을 사용할 수 없습니다.");
					                input.focus();
					                input.value = input.value.replace(' ',''); // 공백제거
					                return false;
					            }
					            else {
					            	return true;
					            }

							}
							
							var fCount=0;
							if(fCount<5){
								$('#btnNwFldr').click(function(){
									if(noSpaceForm(input)==true){
										$.ajax({
											url:"<c:url value='/mysub/Newfolder.do'/>",
											type:"post",
											dataType:"text",
											data:$('#frmFldrName').serialize(),
											success:function(data1){
												console.log('서버로부터 받은 데이터:',data1);
												switch(fCount){
												case 0:
													$('#hidFldr1').css('visibility','visible'); fCount++;
													$('#firF').text(data1);
													$('#hidFldr1').removeAttr('style');
													break;
												case 1:
													$('#hidFldr2').css('visibility','visible'); fCount++;
													$('#secF').text(data1);
													break;
												case 2:
													$('#hidFldr3').css('visibility','visible'); fCount++;
													$('#thrF').text(data1);
													break;
												case 3:
													$('#hidFldr4').css('visibility','visible'); fCount++;
													$('#forF').text(data1);
													break;
												case 4:
													$('#hidFldr5').css('visibility','visible'); fCount++;
													$('#fifF').text(data1);
													$('#newinput').prop('disabled','true');
													$('#newinput').val('New');
													alert( '폴더수가 최대입니다1' );
													break;
												default: 
													//$('#newinput').prop('disabled','true');
													alert( '폴더수가 최대입니다2' );
													
												}
											},
											error:function(){
												//console.log('에러:',error.responseText);
												if(fCount>4){
													alert('더이상 폴더를 생성할 수 없습니다');
												}
												else{
													alert("폴더명을 입력해주세요");
												}
												
											}
										});
									}//유효성체크 if
									
									
								});
							}
							else{
								$('#newinput').prop('disabled','true');
								 alert( '폴더수가 최대입니다' );
							}
						</script>

					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-9">
			<div class="row">
				<div class="col-sm-12 col-md-offset-11">
				<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#mdlNwSub1" style="background-color:#95E1D3;"><strong>+ New</strong></button>
				<!-- 사용자 등록 Modal -->
				<div class="modal" id="mdlNwSub1" tabindex="-1" role="dialog" aria-labelledby="mdlNwSubLabel" aria-hidden="true">
				  	  <div class="modal-dialog">  
		<!--		    <div class="modal-content">   -->
						<div class="row modal-backdrop">
					        <button type="button" class=" mdlbtnAuto col-md-6 btn-lg" onclick = "location.href = 'myAccounts.do'" ><span class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span>
					        <h3>Auto</h3></button>
					        <button type="button" class=" mdlbtnManual col-md-6 btn-lg" data-toggle="modal" data-dismiss="modal" data-target="#mdlNwSub2" ><span class="glyphicon glyphicon-grain" aria-hidden="true"></span>
					        <h3>Manual</h3></button>

				      	</div>
		<!--		    </div>-->						
					  </div>   
				</div>
				
				<!-- Modal -->
				<div class="modal" id="mdlNwSub2" tabindex="-1" role="dialog" aria-labelledby="mdlNwSubLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="mdlNwSubLabel">구독 서비스 등록</h4>
				      </div>
				      <div class="modal-body">
					      	<form action="<c:url value='/manual.do'/>" method="post">
					          <div class="form-group" style="padding-left: 165px;">
					            <img src="..." alt="로고이미지" class="img-thumbnail" id="subLogo" style="display: none;"> <!-- visibility: hidden; -->
					          </div>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">구독서비스명</label>
					            <input type="text" class="form-control" id="subName" name="subservice" value="" style="width:450px;display: inline-block;">
					            
					            <!-- 구독 리스트 클릭 버튼 -->
					            <img src="<%=request.getContextPath()%>/resources/account/dropdown_icon.png" alt="구독 리스트" id="subListbtn"/>
					            
					            
					            
					             <!-- 구독 리스트 -->
					            <div class="list-group" id="subListKsy"> 
					            	<!-- 미디어 리스트 -->
					            	<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Media</a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">넷플릭스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">닌텐도스위치</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">디즈니+</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">멜론</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">벅스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">스포티비나우</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">아이클라우드</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">유튜브프리미엄</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">애플뮤직</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">왓챠</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">웨이브</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">티빙</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">플로</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">플레이스테이션</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<!-- 라이프 스타일 리스트 -->
									<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Life Style</a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">카카오이모티콘+</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">꾸까</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">네이버+</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">더반찬</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">런드리고</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">쏘카</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">와이즐리</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">월간과자</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">위클리 셔츠</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">잡플래닛</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">쿠팡 와우</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">필리</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">하비인더박스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">해피문데이</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<!-- 렉쳐 리스트 -->
									<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">BBC사이언스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">리디셀렉트</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">밀리의 서재</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">매경e신문</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">빅이슈</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">예스24북클럽</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">윌라</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">조인스 프라임</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">퍼블리</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">핀즐</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<!-- 기타 리스트 -->
									<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">ETC</a>
									<a href="#" class="list-group-item subServiceListSelf"><span>직접 입력하기</span></a>
									
								</div> 

								
					          </div>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">다음 결제일</label>
					            <input type="text" class="form-control" id="datepicker" name="paymentday">
					          </div>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">월 구독료</label>
					            <input type="text" class="form-control" id="subPay" name="money">
					          </div>
					          
					          <div>
					          	<label for="recipient-name" class="control-label">관리 폴더 선택</label>
						          	<select class="form-control" name="folderSelect">
									  <option value="Watch">Watch</option>
									  <option value="Life">Life</option>
									</select>
					          </div>
					          
					          <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
						        <button type="submit" class="btn btn-primary">등록</button>
						      </div>
					          
					        </form>
				      </div>
				      
				      
				    </div>
				  </div>
				</div>
				
				
				
				</div>
				<div class="col-sm-12">
					<div class="row">
					<!-- sortable적용 
					<ul id="sortable">
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					  <li class="ui-state-default"></li>
					</ul>
					-->
						<table class="table table-hover" >
						  <thead>
						    <tr>
						      <th class="col-sm-2" scope="col" >${folderName.sfname}</th>
						      <th class="col-sm-3" scope="col" >120,000원(월)</th>
						      <th class="col-sm-3" scope="col" ></th>
						      <th class="col-sm-3" scope="col" ></th>
						      <th class="col-sm-1" scope="col" ></th>
						    </tr>
						  </thead>
						  <tbody id="sortable">
						  <!-- class="table-active" 아래tr에서 삭제한상태 -->
						
						  <!-- 마이바티스 resultMap의 collection 태그사용 -->
						  <%-- <c:if test="${not empty folder.mysubs}">
						  		<c:forEach items="${folder.mysubs}" var="mysub">
								    <tr class="ui-state-default">
								      <td>로고</td>
								      <td>${mysub.subservice}</td>
								      <td>${mysub.paymentday}</td>
								      <td>${mysub.money}원</td>
								      <td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
								    </tr>
							    </c:forEach>
						  </c:if> --%>
						  <c:if test="${not empty secondRecord}">
						<!-- <script>
						console.log(${secondRecord});
						</script> -->
						  		<c:forEach items="${secondRecord}" var="mysub2">
								    <tr class="ui-state-default">
								      <td>로고</td>
								      <td>${mysub2.subservice}</td>
								      <td>${mysub2.paymentday}</td>
								      <td>${mysub2.money}원</td>
								      <td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
								    </tr>
							    </c:forEach>
						  </c:if>
						  
						    <!-- <tr class="ui-state-default">
						      <td>로고</td>
						      <td>쿠팡</td>
						      <td>5일</td>
						      <td>2900원</td>
						      <td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
						    </tr>
		  
						    <tr class="ui-state-default">
						      <td>로고</td>
						      <td>리디북스</td>
						      <td>1일</td>
						      <td>10000원</td>
						      <td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
						    </tr> -->		
						  </tbody>
						</table>
						
						<!--  
						<div class="col-sm-12" id="item_1" style="border: solid orange 1px">item_1</div>
						-->
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>



<!-- 구독 서비스 상세보기 Modal(넷플릭스) -->
<div class="modal" id="modalSeeMore" tabindex="-1" role="dialog" aria-labelledby="mdlNwSubLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" id="modalSeeMoreClose" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="modalSeeMoreSubName"></h4>
			</div>
			<div class="modal-body" >
				<div id="modalSeeMoreImg">
					<img src="<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg" alt="" id="modalSeeMoreInfoImg">
				</div>
				<div id="modalSeeMoreIntro">
					<div id="modalSeeMoreMoney">구독료</div><div id="modalSeeMoreInfoMoney"></div>
					<div id="modalSeeMoreExplain">소개</div><div id="modalSeeMoreInfoExplain"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="modalSeeMoreDefault" class="btn btn-default" data-dismiss="modal">돌아가기</button>
				<button type="button" id="modalSeeMorePrimary" class="btn btn-primary"><a href="https://www.netflix.com/kr/" target='_blank' id="modalSeeMoreInfoForward">구독하기</a></button>
			</div>
		</div>
	</div>
</div>




<script>
	//sortable 적용해보기
	$( "#sortable" ).sortable();

	//데이트피커
	$("#datepicker").datepicker();
	$("#datepicker").datepicker("option", "dateFormat", "yy-mm-dd");
	// 생성폴더 옵션아이템 호버:보이기/숨기기
	$('#dFolder2').hover(function() {
		$('#hvDotDFolder2').css("visibility", "visible");

	}, function() {
		$('#hvDotDFolder2').css("visibility", "hidden");
	});
	$('#dFolder3').hover(function() {
		$('#hvDotDFolder3').css("visibility", "visible");
	}, function() {
		$('#hvDotDFolder3').css("visibility", "hidden");
	});
	$('#hidFldr1').hover(function() {
		$('#hvDotHFolder1').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder1').css("visibility", "hidden");
	});
	$('#hidFldr2').hover(function() {
		$('#hvDotHFolder2').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder2').css("visibility", "hidden");
	});
	$('#hidFldr3').hover(function() {
		$('#hvDotHFolder3').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder3').css("visibility", "hidden");
	});
	$('#hidFldr4').hover(function() {
		$('#hvDotHFolder4').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder4').css("visibility", "hidden");
	});
	$('#hidFldr5').hover(function() {
		$('#hvDotHFolder5').css("visibility", "visible");
	}, function() {
		$('#hvDotHFolder5').css("visibility", "hidden");
	});
	//
	$('#hvDotDFolder2').click(function() {
		$('#btnDFolder2').toggle();
	});
	$('#hvDotDFolder3').click(function() {
		$('#btnDFolder3').toggle();
	});
	$('#hvDotHFolder1').click(function() {
		$('#btnHidFldr1').toggle();
	});
	$('#hvDotHFolder2').click(function() {
		$('#btnHidFldr2').toggle();
	});
	$('#hvDotHFolder3').click(function() {
		$('#btnHidFldr3').toggle();
	});
	$('#hvDotHFolder4').click(function() {
		$('#btnHidFldr4').toggle();
	});
	$('#hvDotHFolder5').click(function() {
		$('#btnHidFldr5').toggle();
	});

	//1번 폴더명수정
	//2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
	$('#btnEdit1').click(function() {
		$('#dfdn1').css("display", "none");
		$('#inp1').css("display", "inline");
		$('#inp1').focus();
	});//$('#btnEdit1').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp1')을 누르면
	$('#btnComp1').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder1.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname1').serialize(),
			success : function(data2) {
				// input태그는 사라진다.
				$('#inp1').css("display", "none");
				// span태그를 보인다
				$('#dfdn1').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력 
				console.log('서버로부터 받은 데이터:', data2);
				$('#dfdn1').html(data2);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//1번 폴더명 수정 끝
	//
	//2번 폴더명수정
	//2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
	$('#btnEdit2').click(function() {
		$('#dfdn2').css("display", "none");
		$('#inp2').css("display", "inline");
		$('#inp2').focus();
	});//$('#btnEdit1').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp2')을 누르면
	$('#btnComp2').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder2.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname2').serialize(),
			success : function(data3) {
				// input태그는 사라진다.
				$('#inp2').css("display", "none");
				// span태그를 보인다
				$('#dfdn2').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data3);
				$('#dfdn2').text(data3);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//2번 폴더명수정 끝
	//
	//3번 폴더명수정
	//2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
	$('#btnEdit3').click(function() {
		$('#firF').css("display", "none");
		$('#inp3').css("display", "inline");
		$('#inp3').focus();
	});//$('#btnEdit3').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp3').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder3.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname3').serialize(),
			success : function(data4) {
				// input태그는 사라진다.
				$('#inp3').css("display", "none");
				// span태그를 보인다
				$('#firF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data4);
				$('#firF').text(data4);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//3번 폴더명수정 끝
	//
	//4번 폴더명수정
	$('#btnEdit4').click(function() {
		$('#secF').css("display", "none");
		$('#inp4').css("display", "inline");
		$('#inp4').focus();
	});//$('#btnEdit4').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp4').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder4.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname4').serialize(),
			success : function(data5) {
				// input태그는 사라진다.
				$('#inp4').css("display", "none");
				// span태그를 보인다
				$('#secF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data5);
				$('#secF').text(data5);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//4번 폴더명수정 끝
	//
	//5번 폴더명수정
	$('#btnEdit5').click(function() {
		$('#thrF').css("display", "none");
		$('#inp5').css("display", "inline");
		$('#inp5').focus();
	});//$('#btnEdit5').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp5').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder5.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname5').serialize(),
			success : function(data6) {
				// input태그는 사라진다.
				$('#inp5').css("display", "none");
				// span태그를 보인다
				$('#thrF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data6);
				$('#thrF').text(data6);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//5번 폴더명수정 끝
	//
	//6번 폴더명수정
	$('#btnEdit6').click(function() {
		$('#forF').css("display", "none");
		$('#inp6').css("display", "inline");
		$('#inp6').focus();
	});//$('#btnEdit6').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp6').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder6.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname6').serialize(),
			success : function(data7) {
				// input태그는 사라진다.
				$('#inp6').css("display", "none");
				// span태그를 보인다
				$('#forF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data7);
				$('#forF').text(data7);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//6번 폴더명수정 끝
	//
	//6번 폴더명수정
	$('#btnEdit7').click(function() {
		$('#fifF').css("display", "none");
		$('#inp7').css("display", "inline");
		$('#inp7').focus();
	});//$('#btnEdit7').click

	//3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
	$('#btnComp7').click(function() {
		//4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
		$.ajax({
			url : "<c:url value='/mysub/EditFolder7.do'/>",
			type : "post",
			dataType : "text",
			data : $('#frmEditname7').serialize(),
			success : function(data8) {
				// input태그는 사라진다.
				$('#inp7').css("display", "none");
				// span태그를 보인다
				$('#fifF').css("display", "inline");
				//5) 응답받은 data를 span태그에 출력
				console.log('서버로부터 받은 데이터:', data8);
				$('#fifF').text(data8);
			},
			error : function() {
				console.log('에러:', error.responseText);
			}
		});
	});//7번 폴더명수정 끝

	
	//구독 목록 버튼 클릭시 리스트 div 
	var subListbtn = false;
	
	$('#subListbtn').click(function() {
		if (!subListbtn) {
			$('#subListKsy').css("display", "block");
			subListbtn = true;
		} else{
			$('#subListKsy').css("display", "none");
			subListbtn = false;
		}
	});//
	
	
	//상세페이지 모달
	/*
		
		ott서비스 인당 가격별로 나눠야하나?
		위클리셔츠 삭제 다른거 추가
	*/
	var modalSeeMorebtn = false;
	var subObjectInfo = [
			['Netflix','<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg','16,000원','넷플릭스는 각종 수상 경력에 빛나는 시리즈, 영화, 애니메이션, 다큐멘터리 등 다양한 콘텐츠를 인터넷 연결이 가능한 수천 종의 디바이스에서 시청할 수 있는 스트리밍 서비스입니다. 저렴한 월 요금으로 일체의 광고 없이 원하는 시간에 원하는 만큼 즐길 수 있습니다. 무궁무진한 콘텐츠가 준비되어 있으며 매주 새로운 시리즈와 영화가 제공됩니다.','https://www.netflix.com/kr/'],
			['Nintendo Switch','<%=request.getContextPath()%>/resources/images_sub/media/014_nintendo.png','4,000원','닌텐도 스위치는 거치용 게임기 및 휴대용 게임기로 스위치 콘솔과 스위치 독, 그리고 탈착 가능한 컨트롤러인 조이콘으로 나뉘어져 있다. 플레이어는 스위치를 스위치 독과 결합 후, TV나 모니터에 연결하여 대형화면에서 여러 명이 함께 플레이할 수 있다.','https://www.nintendo.co.kr/hardware/'],
			['Disney+','<%=request.getContextPath()%>/resources/images_sub/media/005_disney.png','8,000원','디즈니, 픽사, 마블, 스타워즈, 내셔널지오그래픽, Star의 콘텐츠를 다 함께 즐겨보세요. 인기 영화, 몰아보기 시리즈, 디즈니+와 Star에서 독점 공개하는 오리지널까지, 원하는 만큼 볼 수 있습니다. 완결 시리즈는 물론 오리지널 신작과 최신 히트작도 언제든지 시청하세요.','https://www.disneyplus.com/ko-kr'],
			['Melon','<%=request.getContextPath()%>/resources/images_sub/media/010_melon.png','7,000원','멜론은 대한민국의 유료 디지털 음원 스트리밍 서비스 사이트이며, 카카오엔터테인먼트 멜론컴퍼니에서 운영한다. 음악 차트 서비스 또한 제공하고 있다.','https://www.melon.com/'],
			['Bugs','<%=request.getContextPath()%>/resources/images_sub/media/011_bugs.png','7,000원','Bugs! 국내 최대 규모의 음원을차별화된 고음질로 다양한 플랫폼을 통해장소에 제약 없이 제공합니다. 우수한 음원을 발굴하고,체계적인 투자와 관리 시스템으로사업파트너에게 안정적인 비즈니스 환경을 제공합니다.','https://music.bugs.co.kr/'],
			['SpoTV Now','<%=request.getContextPath()%>/resources/images_sub/media/001_spotvnow.jpg','9,000원','SPOTV NOW는 SPOTV의 OTT 서비스이다. 주로 스포츠 콘텐츠를 중심으로 제공하고 있으며 카카오, 네이버, 페이스북을 포함해서 회원가입을 해야 이용이 가능하다. 스포티비 중계를 실시간 생중계 시청을 할 수 있는 플랫폼이다.','https://www.spotv.net/main.asp'],
			['iCloud','<%=request.getContextPath()%>/resources/images_sub/media/009_icloud.png','1,000원','iCloud는 자동으로 사진, 파일, 메모, 암호 및 기타 데이터를 클라우드에 안전하게 저장하고 모든 기기에 최신 상태로 유지하는 Apple의 서비스입니다. iCloud를 사용하여 iPhone, iPad 또는 iPod touch를 백업할 수도 있습니다.','https://www.icloud.com/'],
			['Youtube Premium','<%=request.getContextPath()%>/resources/images_sub/media/002_youtube.png','10,000원','YouTube Premium에 가입하면 동영상 오버레이 광고를 포함해 동영상 재생 전과 중간에 나오는 광고로 끊기거나 방해받지 않고 수백만 개의 동영상을 감상할 수 있습니다. ... 동영상과 재생목록을 오프라인 저장하여 인터넷에 연결되어 있지 않아도 오프라인으로 시청할 수 있습니다.','https://www.youtube.com/premium'],
			['Apple Music','<%=request.getContextPath()%>/resources/images_sub/media/015_AppleMusic.png','9,000원','무손실 오디오로 스트리밍하는 8천5백만 곡 이상의 음악. 추가 비용은 제로. 즐겨 듣는 음악 다운로드. 오프라인에서 재생. 3개월 무료 체험으로 Apple Music을 시작해 보세요.','https://www.apple.com/kr/apple-music/'],
			['Watcha','<%=request.getContextPath()%>/resources/images_sub/media/004_watcha.png','8,000원','왓챠는 모두의 다름이 인정받고 개인의 취향이 존중받는, 더 다양한 세상을 만드는 회사입니다. 모든 영화, 드라마, 다큐멘터리, 애니메이션을 언제 어디서나 최고의 화질로 무제한 감상하세요.','https://watcha.com/'],
			['Wavve','<%=request.getContextPath()%>/resources/images_sub/media/007_wave.png','8,000원','웨이브 (wavve) 재미의 파도를타다! 웨이브(WAVVE)는 푹과 OKSUSU가 설립·통합되어 SK텔레콤과 지상파 방송3사가 합작 운영하는 인터넷 기반 OTT 서비스이다. 현재 JTBC 계열사 채널들에 한하여 실시간 방송을 중계하지 않는다.','https://www.wavve.com/index.html'],
			['Tving','<%=request.getContextPath()%>/resources/images_sub/media/006_tving.png','8,000원','티빙(TVING)은 CJ ENM으로부터 독립하여 2020년 10월 1일 설립된 CJ 계열의 OTT 회사이다. TVING은 CJ ENM, JTBC를 포함한 인기 채널의 실시간TV, 방송 다시보기,국내외 영화 및 디지털콘텐츠 뿐만 아니라 키즈, 커머스 등 다양한 콘텐츠를 제공하고 있습니다. 또한, 모바일, PC와 스마트TV까지 다양한 환경에서 서비스를 자유롭게 이용할 수 있습니다.','https://www.tving.com/'],
			['Flo','<%=request.getContextPath()%>/resources/images_sub/media/008_flo.png','7,000원','플로는 이용자가 인기 차트에서 탈피해 자신만의 음악 취향을 발견할 수 있도록 돕습니다. 이용자들의 감상 음악 리스트와 좋아요 이력 등을 바탕으로 새로운 음악을 끊임없이 추천합니다. 데이터가 축적돼 이용하면 할수록 내 취향에 맞는 음악을 발견할 확률이 높아집니다.','https://www.music-flo.com/'],
			['Playstation','<%=request.getContextPath()%>/resources/images_sub/media/012_playstation.jpg','4,000원','소니 인터랙티브 엔터테인먼트의 콘솔 게임기 브랜드이며, 저장된 게임 진행 내역이 모두 콘솔에 저장되어 언제든 게임을 재설치하면 그만둔 부분부터 다시 플레이할 수 있습니다. ','https://www.playstation.com/ko-kr/'],
			
			['카카오 이모티콘+','<%=request.getContextPath()%>/resources/images_sub/lifestyle/014_kakaoplus.jpg','2,500원','갖고 싶던 수많은 이모티콘을 마음껏 즐겨요! 인기 아이템부터 최신 아이템까지 다양한 이모티콘을 마음껏 톡 해보세요! 자동 추천기능으로 더 빠르게! 센스는 타이밍! 메시지를 톡에 입력하면 자동으로 이모티콘을 추천해드려요! 두근두근 랜덤 이모티콘 추천기능으로 즐거움까지!','https://e.kakao.com/plus_info'],
			['꾸까','<%=request.getContextPath()%>/resources/images_sub/lifestyle/007_kukka.png','18,000원','꾸까(kukka)는 꽃이 주는 행복을 누구나 누릴 수 있도록, 일상에서 쉽게 꽃을 즐기는 문화를 꿈꾸는 플라워테크 스타트업입니다. 플라워 커머스 "꾸까"는 국내 최초로 꽃 정기구독 서비스를 선보여 2주 간격으로 직접 디자인하고 생산한 꽃을 주기적으로 배송하고 있습니다. 꽃을 안정적이고 저렴하게 공급하고, 주기적인 수요를 통해 일상에서 쉽게 꽃을 즐기는 문화를 만들어가고 있습니다.','https://kukka.kr'],
			['네이버+','<%=request.getContextPath()%>/resources/images_sub/lifestyle/008_naverplus.png','5,000원','네이버플러스 멤버십은 네이버에서 2020년 6월 출시한 구독형 서비스입니다. 네이버 멤버십 회원에 가입하면 네이버페이 결제액의 최대 5%까지 적립받을 수 있고(My단골, 특가할인 등과 중복 적용) 또한 티빙 방송 무제한 이용권, 웹툰 49개, 영화 1편 할인 쿠폰, 시리즈온 영화 무제한 이용권, SPOTV NOW, 콘텐츠 체험팩 6종에서 하나를 선택하여 이용할 수 있습니다.','https://nid.naver.com/membership/join'],
			['더 반찬','<%=request.getContextPath()%>/resources/images_sub/lifestyle/016_thebanchan.jpg','28,000원','더 반찬은 매번 다른 메뉴를 정기 구독할 수 있는 서비스입니다. 넉넉하고 푸짐한 양, 한달 내 원하는 날짜에 무료배송, 셰프의 손으로 직접 요리, 깨끗한 위생의 원칙을 지켜 반찬 정기 구독 서비스를 시행하고 있습니다.','https://www.thebanchan.co.kr/main/initMain.action'],
			['런드리고','<%=request.getContextPath()%>/resources/images_sub/lifestyle/003_laundrygo.png','65,000원','런드리고는 자체 개발한 스마트 빨래 수거함(런드렛)에 세탁물을 담아 당일 밤 12시까지 맡기면, 익일 밤 12시까지 하루 만에 완료해 다시 문 앞에 배송해주는 모바일 세탁 서비스입니다. 천연 세제와 스마트팩토리로 완성하는 세탁퀄리티, 비대면 한밤배송 서비스와 합리적인 가격을 제공하고 있습니다.','https://www.laundrygo.com/brand'],
			['SOCAR','<%=request.getContextPath()%>/resources/images_sub/lifestyle/009_socar.png','3,000원','쏘카는 자동차라는 수단을 넘어 이동에 대한 사람들의 오랜 바람을 다시 떠올립니다. 내가 원할 때, 어디서나, 편리하고 안전하게 이동하고 싶다는 마음. 우리는 차를 소유하며 당연하게 여겨온 불편함과 비효율을 줄이고, 기술과 데이터로 더 나은 이동 방식을 제시하겠습니다.','https://www.socar.kr/company'],
			['Wisely','<%=request.getContextPath()%>/resources/images_sub/lifestyle/006_wisely.png','9,000원','국내 1위 면도기 구독 서비스! 와이즐리컴퍼니는 면도기 브랜드 "WISELY" 이후, 스킨케어 브랜드 "OPENWORK", 두피케어 브랜드 "HEADWORKS", 그리고 건강기능식품 브랜드 "HABITUAL" 을 출시하여 다양한 생활 소비재 시장에서 좋은 제품을 정직한 가격에 전하고 있습니다.','https://wisely.wiselycompany.com/'],
			['월간 과자','<%=request.getContextPath()%>/resources/images_sub/lifestyle/017_monthlysnack.png','10,000원','월간과자는 롯데제과가 지난해 6월 업계 최초로 선보인 과자 구독 서비스로, 월 9900원 또는 1만9800원을 내면 과자가 담긴 박스가 집으로 배송된다. 롯데제과 공식 온라인몰에서도 유통기한이 3개월여 남은 제품의 유통기한을 밝히고 최대 70%까지 할인 판매 중이다.','https://lottesweetmall.com/product/detail_subscribe.html?product_no=499'],
			['위클리 셔츠','<%=request.getContextPath()%>/resources/images_sub/lifestyle/011_weeklyshirts.png','50,000원','위클리셔츠는 지난 해 10월 “입기만 하면 되는 셔츠”라는 슬로건을 내걸고 야심차게 출범한 스타트업 기업이다. 위클리셔츠를 이용하는 방법은 간단하다. 원하는 셔츠 스타일과 일주일에 받고 싶은 셔츠의 양을 선택한 뒤, 주문을 하고 결제를 하면 지정한 장소로 셔츠를 배송해준다.',''],
			['잡플래닛','<%=request.getContextPath()%>/resources/images_sub/lifestyle/015_jobplanet.jpg','12,000원','대기업에서부터 스타트업까지! 기업의 복지 및 급여, 승진기회 및 가능성, 업무와 삶의 균형, 사내문화, 경영진, 총 만족도, 베스트 연봉정보 등 후기를 통한 살아있는 정보를 얻을 수 있는 서비스입니다. 월간 구독으로 모든 정보를 열람할 수 있습니다.','https://www.jobplanet.co.kr/welcome/index'],
			['쿠팡 와우','<%=request.getContextPath()%>/resources/images_sub/lifestyle/018_coupang.png','4,000원','와우 멤버십 회원은 쿠팡 내 무제한 무료 배송·반품과 자정까지 신선식품을 주문하면 다음날 새벽에 받아볼 수 있는 "로켓프레시", "로켓직구" 무료배송, 온라인동영상서비스(OTT) "쿠팡플레이" 등 서비스를 사용할 수 있다. 인상된 멤버십 가격은 지난달 30일부터 신규 회원에게 적용된다.','https://www.coupang.com/'],
			['Pilly','<%=request.getContextPath()%>/resources/images_sub/lifestyle/004_pilly2.png','14,000원','맞춤영양제 정기구독 서비스 필리를 운영중인 케어위드는 <모두가 건강한 삶을 유지하도록 돕는다.>는 비전을 가지고 출발한 헬스케어 스타트업입니다. 필리의 일은 "영양제 판매"가 아닌 올바른 영양성분 섭취를 통해 건강한 생활을 유지할 수 있도록 돕는 것입니다. 필리는 이런 어려움을 해소하기 위해 영양성분을 추천하고, 용량이 넘치거나 부족하지 않도록 믿을 수 있는 제품을 만들고, 섭취 관리 서비스 "필리케어"를 제공합니다.','https://pilly.kr/'],
			['Hobby in the Box','<%=request.getContextPath()%>/resources/images_sub/lifestyle/011_hobbyinthebox.png','40,000원','인터넷에 떠도는 수많은 취미들,나도 한 번쯤 해보고 싶은데 배워보기에도, 재료를 사러가기에도 시간이 부담된다면,혹은 아직 내가 어떤걸 좋아하는 지 몰라 찾고싶다면,취미 정기배송 와 함께 하세요.매월 새로운 취미가 집에서 바로 즐길 수 있도록 구성되어 배송됩니다.세상의 흥미로운 취미들을 연구하고 선별하고 소개하고 전달할게요.','https://hobbyinthebox.co.kr/'],
			['해피 문데이','<%=request.getContextPath()%>/resources/images_sub/lifestyle/005_happymoonday.png','7,000원','해피문데이는 여성건강을 생각한 유기농 생리대와 탐폰을 만들고 배송합니다.','https://happymoonday.com/'],
			
			['BBC Science','<%=request.getContextPath()%>/resources/images_sub/lecture/010_bbc.png','13,000원','과학이 재미없는 아이들에게, 과학이 지루하고 멀게만 느껴지는 사람들에게 BBC 사이언스는 흥미로운 기사, 기상천외한 질문과 답변으로 다가갑니다.','https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=283947105'],
			['리디 셀렉트','<%=request.getContextPath()%>/resources/images_sub/lecture/032_ridiselect.png','5,000원','리디셀렉트란 리디북스에서 진행하고 있는 월단위 이북 대여 서비스이며 매달 정기구독으로 리디북스에서 선정한 책들을 무료로 읽어볼 수 있는 서비스입니다.','https://select.ridibooks.com/home'],
			['밀리의 서재','<%=request.getContextPath()%>/resources/images_sub/lecture/028_millie.png','10,000원','밀리의 서재는 독서로 더 가치 있는 일상을 만듭니다. 한 달 동안 읽는 책은 평균 7.78권! 모든 사람의 취향을 만족시킬 수 있는 도서를 제공합니다. 책을 끝까지 다 읽지 않아도 독서의 달콤함을 느낄 수 있도록 책이 보이는 오디오북, 챗북 등 다양한 독서 콘텐츠를 만듭니다.','https://www.millie.co.kr/company/company.html'],
			['매경e신문','<%=request.getContextPath()%>/resources/images_sub/lecture/008_meailnews.png','15,000원','매경e신문은 프리미엄뉴스, 레이더M, 매경회사연감 등 신문에 실리는 기사 이상의 정보를 회원들에게 제공합니다.','https://digital.mk.co.kr/intro/intro.php'],
			['빅이슈','<%=request.getContextPath()%>/resources/images_sub/lecture/021_bigissue.png','7,000원','《빅이슈》는 홈리스를 지원하기 위해 발행되는 스트리트페이퍼로, 잡지 판매대금의 절반 이상이 홈리스 출신의 판매사원(빅판)에게 돌아간다.','https://bigissue.kr/'],
			['예스24 북클럽','<%=request.getContextPath()%>/resources/images_sub/lecture/020_yes24.png','6,000원','YES24 북클럽은 다양한 취향을 가진 고객을 위해 폭 넓은 분야와 방대한 종 수를 고객 가치로 두고 있습니다. 일반 도서의 베스트셀러와 신간뿐 아니라 스테디셀러, 구간 명저, 그리고 만화, 장르문학까지 서비스 범위를 확대할 계획입니다.','http://m.yes24.com/BookClub/Main'],
			['윌라','<%=request.getContextPath()%>/resources/images_sub/lecture/016_willa.png','10,000원','전문 성우들의 목소리로 책을 들을 수 있는 구독 서비스. 정기 구독으로 다양한 오디오북을 즐길 수 있습니다.','https://www.welaaa.com/'],
			['조인스 프라임','<%=request.getContextPath()%>/resources/images_sub/lecture/018_joinsprime.png','10,000원','저렴한 정액제 요금으로 신문과 잡지를 무제한 열람할 수 있는 서비스입니다.','https://www.joins.com/'],
			['퍼블리','<%=request.getContextPath()%>/resources/images_sub/lecture/024_publy.png','10,000원','퍼블리는 누구나 쉽게 커리어를 학습하고 관리할 수 있도록 돕고, 더 많은 기회와 더 좋은 네트워크를 경험하는 "커리어 풀솔루션" 서비스를 제공하는 플랫폼입니다.','https://publy.co/'],
			['핀즐','<%=request.getContextPath()%>/resources/images_sub/lecture/033_pinzle.png','20,000원','핀즐은 국내 최다 해외 아티스트를 보유한 국내 유일 글로벌 아트 에이전시입니다. 삶과 예술에 대한 아티스트 인터뷰와 지면으로만 만날 수 있었던 콘텐츠까지, 바야흐로 그림을 정기구독하는 시대입니다.','https://pinzle.net/']
			
	];
	
	//로고 뿌려주기
	$('.subServiceList').click(function(e){
		var eachService = document.getElementsByClassName('subServiceList');
		
		$.each(eachService, function(index_3, item_3){	
	
			if(e.target == item_3){
				$.each(subObjectInfo, function(index_2, item_2){
					if(index_3 == index_2){
						$('#subLogo').attr("src",item_2[1]).attr("style","width:240px");		//style="width:240px;
					}
				});
			}
		});
	});
	
	//구독 리스트 선택값 넘기기
	
	$('.btnSeeMore').click(function(e){
		var btnSeeMore = document.getElementsByClassName('btnSeeMore');
		
		$.each(btnSeeMore, function(index_1, item_1){
			
			if(e.target == item_1){
				$.each(subObjectInfo, function(index, item){
					
					if(index_1 == index){
						$('#modalSeeMoreSubName').html(item[0]);
						$('#modalSeeMoreInfoImg').attr("src",item[1]);
						$('#modalSeeMoreInfoMoney').html(item[2]);
						$('#modalSeeMoreInfoExplain').html(item[3]);
						$('#modalSeeMoreInfoForward').attr("href",item[4]);
					}
				});
			}
		});
		if(!modalSeeMorebtn){
			$('#modalSeeMore').css("display", "block");
			modalSeeMorebtn = true;
		}
	});
	$('#modalSeeMoreDefault').click(function(){
		if(modalSeeMorebtn){
			$('#modalSeeMore').css("display", "none");
			modalSeeMorebtn = false;
		}
	});
	$('#modalSeeMorePrimary').click(function(){
		if(modalSeeMorebtn){
			$('#modalSeeMore').css("display", "block");
			modalSeeMorebtn = true;
		}
	});
	$('#modalSeeMoreClose').click(function(){
		if(modalSeeMorebtn){
			$('#modalSeeMore').css("display", "none");
			modalSeeMorebtn = false;
		}
	});
	
	//직접입력하기 클릭시, 데이터 넘지기 않고 모달창만 닫히도록
	//subServiceListSelf
	$('.subServiceListSelf').click(function(){
		$('#subListKsy').css("display", "none");
	});
	
	//구독 리스트 선택값 넘기기
	var subObject = {
			'넷플릭스' : '16000',
			'닌텐도스위치' : '4000',
			'디즈니+' : '8000',
			'멜론' : '7000',
			'벅스' : '7000',
			'스포티비나우' : '9000',
			'아이클라우드' : '1000',
			'유튜브프리미엄' : '10000',
			'애플뮤직' : '9000',
			'왓챠' : '8000',
			'웨이브' : '8000',
			'티빙' : '8000',
			'플로' : '7000',
			'플레이스테이션' : '4000',
			'카카오이모티콘+' : '2500',
			'꾸까' : '18000',
			'네이버+' : '5000',
			'더반찬' : '28000',
			'런드리고' : '65000',
			'쏘카' : '3000',
			'와이즐리' : '9000',
			'월간과자' : '10000',
			'위클리 셔츠' : '50000',
			'잡플래닛' : '12000',
			'쿠팡 와우' : '4000',
			'필리' : '14000',
			'하비인더박스' : '40000',
			'해피문데이' : '7000',
			'BBC사이언스' : '13000',
			'리디셀렉트' : '5000',
			'밀리의 서재' : '10000',
			'매경e신문' : '15000',
			'빅이슈' : '7000',
			'예스24북클럽' : '6000',
			'윌라' : '10000',
			'조인스 프라임' : '10000',
			'퍼블리' : '10000',
			'핀즐' : '20000'
	};
	
	$('.subServiceList').click(function(e){
		$('#subName').val(this.childNodes[0].innerHTML);
		$.each(subObject, function(index, item){
			if(e.target.childNodes[0].innerHTML == index){
				$('#subPay').val(item);
			}
		});
    	$('#subListKsy').css("display", "none");
    });
	
	
	
	
</script>
<style>
	#mdlNwSub1{
		position: fixed;
		top: 50%;
		left: 50%;
		-webkit-transform: translate(-50%, -50%);
		-moz-transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		-o-transform: translate(-50%, -50%);
		transform: translate(-50%, -50%);
	}
	.mdlbtnAuto{
		width:300px;
		height:300px;
		font-style:black;
		background-color: white;
		border: none;
	}
	.mdlbtnManual{
		width:300px;
		height:300px;
		font-style:black;
		background-color: white;
		border: none;
	}
	.mdlbtnAuto:hover{
		background-color: #1CBFDB;
		color: red;
	}
	.mdlbtnManual:hover{
		background-color: gold;
		color: red;
	}
	.btnSeeMore{
		float: right;
		background-color:#95E1D3;
		border:none;
		color:#fff;
		padding:2px 10px;
		border-radius: 10px;
		z-index:1;
	}
	#modalSeeMore{
		z-index:1050;
		top: 140px;
	}
	#subListKsy{
		display:none; 
		position: absolute;
		width:560px;
		height:500px;
		overflow:auto;
		
	}
	#subListKsy > a:hover{
		background-color:#fce38a; 
	}
	#subListbtn{
		width:30px;
		height:30px;
		display:inline-block;
		cursor:pointer;
	}
	#modalSeeMoreImg{
		display: flex;
		margin: 0 auto;
		width:30%;
	}
	#modalSeeMoreIntro{
		border:3px dashed grey;
		font-size:16px;
		font-family:'Nanum Gothic', sans-serif;
		text-align:center;
		margin-top:5px;
		padding:5px;
		border-radius: 20px;
	}
	#modalSeeMoreMoney, #modalSeeMoreExplain{
		background-color:#95E1D3;
		color:#fff;
		border-radius: 10px;
	}
	
	/*	sortable 적용해보기	*/
	#sortable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  	#sortable li { margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; font-size: 1.4em; height: 18px; }
  	#sortable li span { position: absolute; margin-left: -1.3em; }
</style>
