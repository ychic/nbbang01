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
	<!-- jQuery사용을 위한 라이브러리 임베딩-->
	<!-- 1]다운받은  .js파일 임베디드 -->
	<!--  
	<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
	-->
	<!-- 2]CDN(Content Deliver Network)주소 사용 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
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
					   
					   <!--  sample data-->
					   <a href="#" class="list-group-item">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		Game<span class="badge bg-primary rounded-pill">14</span></a>
					   <a href="#" class="list-group-item">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		Watch & Listen<span class="badge bg-primary rounded-pill">3</span></a>
					   <a href="#" class="list-group-item">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		Life<span class="badge bg-primary rounded-pill">7</span></a>
					   <!-- ---------- -->
					   <a href="#" class="list-group-item" id="hidFldr1" style="visibility: hidden;">
					   		<span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		<span id="firF">new1</span><span class="badge bg-primary rounded-pill">0</span></a>
					   
					   <a href="#" class="list-group-item" id="hidFldr2" style="visibility: hidden;">
					   		<span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		<span id="secF">new1</span><span class="badge bg-primary rounded-pill">0</span></a>
					   		
					   <a href="#" class="list-group-item" id="hidFldr3" style="visibility: hidden;">
					   		<span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		<span id="thrF">new1</span><span class="badge bg-primary rounded-pill">0</span></a>
					   		
					   <a href="#" class="list-group-item" id="hidFldr4" style="visibility: hidden;">
					   		<span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		<span id="forF">new1</span><span class="badge bg-primary rounded-pill">0</span></a>
					   		
					   <a href="#" class="list-group-item" id="hidFldr5" style="visibility: hidden;">
					   		<span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		<span id="fifF">new1</span><span class="badge bg-primary rounded-pill">0</span></a>
					   
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
										success:function(data){
											console.log('서버로부터 받은 데이터:',data);
											switch(fCount){
											case 0:
												$('#hidFldr1').css('visibility','visible'); fCount++;
												$('#firF').text(data);
												break;
											case 1:
												$('#hidFldr2').css('visibility','visible'); fCount++;
												$('#secF').text(data);
												break;
											case 2:
												$('#hidFldr3').css('visibility','visible'); fCount++;
												$('#thrF').text(data);
												break;
											case 3:
												$('#hidFldr4').css('visibility','visible'); fCount++;
												$('#forF').text(data);
												break;
											case 4:
												$('#hidFldr5').css('visibility','visible'); fCount++;
												$('#fifF').text(data);
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
					   <!--  sample data
					   <a href="#" class="list-group-item">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		Game<span class="badge bg-primary rounded-pill">14</span></a>
					   <a href="#" class="list-group-item">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		Watch & Listen<span class="badge bg-primary rounded-pill">3</span></a>
					   <a href="#" class="list-group-item">
					   <span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		Life<span class="badge bg-primary rounded-pill">7</span></a>
					   	-->

					   		<!--  
					   <c:if test="">
					   		<a href="#" class="list-group-item">
					   		<span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="padding-right: 10px"></span>
					   		new1<span class="badge bg-primary rounded-pill">0</span></a>
					   </c:if>	-->

					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-9">
			<div class="row">
				<div class="col-sm-12 col-md-offset-11">
				<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#mdlNwSub" style="background-color:#95E1D3;"><strong>+ New</strong></button>
				<!-- Modal -->
				<div class="modal fade" id="mdlNwSub" tabindex="-1" role="dialog" aria-labelledby="mdlNwSubLabel" aria-hidden="true">
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
					            <input type="text" class="form-control" id="subName">
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
						  <tbody>
						    <tr class="table-active">
						      <td>로고</td>
						      <td>서비스 명</td>
						      <td>결제일</td>
						      <td>결제 금액</td>
						      <td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
						    </tr>
						    <tr>
						      <td>로고</td>
						      <td>서비스 명</td>
						      <td>결제일</td>
						      <td>결제 금액</td>
						      <td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
						    </tr>
						    <tr>
						      <td>로고</td>
						      <td>서비스 명</td>
						      <td>결제일</td>
						      <td>결제 금액</td>
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

<script>
	$( "#datepicker" ).datepicker();
	$( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
</script>
