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
					   <a href="#" class="list-group-item active">Folder</a>
					   
					   <a href="#" class="list-group-item">
					   
					   <form id="frmFldrName">
					   <input type="text" name="folderName" style="border: none; width: 110px;" placeholder="New" >
					   <span class="glyphicon glyphicon-plus" id="btnNwFldr" aria-hidden="true" style="padding-left: 40px"></span>
					   </form>
					   </a>
					   
					   <!-- 필수 폴더(수정/삭제 불가)--> 
					   <a href="#" class="list-group-item" id="dFolder1">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span>All</span><span class="badge bg-primary rounded-pill">14</span></a>
					   
					   

					   <!-- 기본 폴더1(수정/삭제 가능)================================================================--> 
					   <a href="#" class="list-group-item" id="dFolder2">
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
					   <a href="#" class="list-group-item" id="dFolder3">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   <span id="dfdn2" style="padding: 0px; margin: 0px;">Life</span>
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
					   <span id="secF" style="padding: 0px; margin: 0px;">new2</span>
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
							var fCount=0;
							if(fCount<5){
								$('#btnNwFldr').click(function(){
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
												break;
											default: alert( '폴더수가 최대입니다' );
											}
										},
										error:function(){
											console.log('에러:',error.responseText);
										}
									});
								});
							}
							else{
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
					      	<form>
					          <div class="form-group">
					            <img src="..." alt="alt:로고이미지" class="img-thumbnail" id="subLogo">
					          </div>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">구독서비스명</label>
					            <input type="text" class="form-control" id="subName" value="" style="width:450px;display: inline-block;">
					            
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
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">쿠팡와우</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">필리</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">하비인더박스</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">해피문데이</span><button type="button" class="btnSeeMore" >더보기</button></a>
									<!-- 렉쳐 리스트 -->
									<a href="#" class="list-group-item" style="background-color:rgba(241, 114, 114, 0.96);color:#fff">Lecture</a>
									<a href="#" class="list-group-item subServiceList"><span class="subListSpan">bbc 사이언스</span><button type="button" class="btnSeeMore" >더보기</button></a>
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
					            <input type="text" class="form-control" id="datepicker">
					          </div>
					          <div class="form-group">
					            <label for="recipient-name" class="control-label">월 구독료</label>
					            <input type="text" class="form-control" id="subPay">
					          </div>
					          <div class="form-group">
					            <label for="message-text" class="control-label">메모</label>
					            <textarea class="form-control" id="subMemo"></textarea>
					          </div>
					        </form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				        <button type="button" class="btn btn-primary">등록</button>
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
						      <th class="col-sm-2" scope="col" >폴더 밸류(월)</th>
						      <th class="col-sm-3" scope="col" >ex 120,000원</th>
						      <th class="col-sm-3" scope="col" ></th>
						      <th class="col-sm-3" scope="col" ></th>
						      <th class="col-sm-1" scope="col" ></th>
						    </tr>
						  </thead>
						  <tbody id="sortable">
						  <!-- class="table-active" 아래tr에서 삭제한상태 -->
						    <tr class="ui-state-default">
						      <td>로고</td>
						      <td>넷플릭스</td>
						      <td>3일</td>
						      <td>14900원</td>
						      <td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
						    </tr>
						  
						    <tr class="ui-state-default">
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
						    </tr>		
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
				<h4 class="modal-title" id="mdlNwSubLabel">NETFLIX</h4>
			</div>
			<div class="modal-body" >
				<div id="modalSeeMoreImg">
					<img src="<%=request.getContextPath()%>/resources/images_sub/media/003_netflix.jpeg" alt="">
				</div>
				<div id="modalSeeMoreIntro">
					<div id="modalSeeMoreMoney">구독료</div><div>14,500 원 (월/4인 기준)</div>
					<div id="modalSeeMoreExplain">소개</div><div>넷플릭스는 각종 수상 경력에 빛나는 시리즈, 영화, 애니메이션, 다큐멘터리 등 다양한 콘텐츠를 인터넷 연결이 가능한 수천 종의 디바이스에서 시청할 수 있는 스트리밍 서비스입니다. 저렴한 월 요금으로 일체의 광고 없이 원하는 시간에 원하는 만큼 즐길 수 있습니다. 무궁무진한 콘텐츠가 준비되어 있으며 매주 새로운 시리즈와 영화가 제공됩니다.</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="modalSeeMoreDefault" class="btn btn-default" data-dismiss="modal">돌아가기</button>
				<button type="button" id="modalSeeMorePrimary" class="btn btn-primary"><a href="https://www.netflix.com/kr/" target='_blank'>구독하기</a></button>
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
	var modalSeeMorebtn = false;
	
	$('.btnSeeMore').click(function(){
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
			'넷플릭스' : '24,000원',
			'닌텐도스위치' : '23,000원',
			'디즈니+' : '22,000원'
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
