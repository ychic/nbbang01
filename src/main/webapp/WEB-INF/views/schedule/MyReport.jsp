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
   <script src="<%=request.getContextPath()%>/resources/admin/vendor/chart.js/Chart.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-area-demo.js"></script>
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-pie-demo.js"></script>
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-bar-demo.js"></script>
   <!-- 제이쿼리 -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
   <!-- chart.js -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
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
<style>
.text-gray-800 {
    color: #5a5c69!important;
.mb-0, .my-0 {
    margin-bottom: 0!important;
}
.h3, h3 {
    font-size: 1.75rem;
}

</style>
<div class="container">
   <div class="row">
      <div class="col-sm-3">
         <div class="row" >
            <div class="col-sm-12"></div>
            <div class="col-sm-10" >
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
                        <div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button       type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
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
                        <div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button       type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
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
                        <div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button       type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
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
                        <div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button       type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
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
                        <div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button       type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
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
                        <div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button       type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
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
                        <div class="col-sm-4" style="background-color: gold; padding: 0px; margin-right: 0px;"><button       type="button" class="btn btn-danger" style="width: 100%; height: 100%;">삭제</button></div>
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
      <!-- Begin Page Content -->
            <div class="container-fluid">

               <!-- Page Heading -->
               <div
                  class="d-sm-flex align-items-center justify-content-between mb-4">
                  <h1 class="h3 mb-0 text-gray-800">My 리포트</h1>
                  <hr>
               </div>
      <div class="col-sm-9">
         <div class="card border-left-primary shadow h-100 py-2" >
            <div class="card-body">
               <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                     
                     <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">   Average Cost(KRW)</div>
                     <div class="h5 mb-0 font-weight-bold text-gray-800">Years ₩181500${YearsTotalPrice} </div>
                     <div class="h5 mb-0 font-weight-bold text-gray-800">Month ₩45000${MonthTotalPrice} </div>
                     <div class="h5 mb-0 font-weight-bold text-gray-800">Week ₩45000${WeekTotalPrice} </div>                     
                  </div>
                  <div class="col-auto">
                     <i class="fas fa-calendar fa-2x text-gray-300"></i>
                  </div>
               </div>
            </div>
      </div>
   
   <!-- Content Row -->
               <hr>
               <div class="row">
               
               <!-- Bar Chart 월별 총계(향후 12개월) -->
               <div class="col-xl-8 col-lg-7">
                          <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h4 class="m-0 font-weight-bold text-primary">월별 지출 액수</h4>
                                 </div>
                                 <div class="card-body">
                                    <div class="chart-bar">
                                       <canvas id="myBarChart"></canvas>
                                    </div>
                                 </div>
                           </div>
                        </div>
                         <!-- Pie Chart 폴더 총계(향후 12개월) -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">월별 지출 현황</h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart3"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 왓챠
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 티빙
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 디즈니<br/>
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-warning"></i> 웨이브
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-danger"></i> 넷플릭스
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-secondary"></i> 라프텔
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                   </div><!-- row -->
                   <br/>
               <div class="row">
                  <!-- Area Chart 월별 총계(향후 12개월) -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">월별 지출 건수</h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <!-- Pie Chart 폴더 총계(향후 12개월) -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">월별 지출 건수</h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart4"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 왓챠
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 티빙
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 디즈니<br/>
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-warning"></i> 웨이브
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-danger"></i> 넷플릭스
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-secondary"></i> 라프텔
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
               </div><!-- row -->
               
               
            </div><!-- container-fluid -->
         </div>
      </div>
   </div>
</div>

<script>
   //데이트피커
   $( "#datepicker" ).datepicker();
   $( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
   // 생성폴더 옵션아이템 호버:보이기/숨기기
   $('#dFolder2').hover(
      function() {
         $('#hvDotDFolder2').css("visibility","visible");
         
      }, function() {
         $('#hvDotDFolder2').css( "visibility","hidden" );
   });
   $('#dFolder3').hover(
      function() {
         $('#hvDotDFolder3').css("visibility","visible");
      }, function() {
         $('#hvDotDFolder3').css( "visibility","hidden" );
   });
   $('#hidFldr1').hover(
      function() {
         $('#hvDotHFolder1').css("visibility","visible");
      }, function() {
         $('#hvDotHFolder1').css( "visibility","hidden" );
   });
   $('#hidFldr2').hover(
      function() {
         $('#hvDotHFolder2').css("visibility","visible");
      }, function() {
         $('#hvDotHFolder2').css( "visibility","hidden" );
   });
   $('#hidFldr3').hover(
      function() {
         $('#hvDotHFolder3').css("visibility","visible");
      }, function() {
         $('#hvDotHFolder3').css( "visibility","hidden" );
   });
   $('#hidFldr4').hover(
      function() {
         $('#hvDotHFolder4').css("visibility","visible");
      }, function() {
         $('#hvDotHFolder4').css( "visibility","hidden" );
   });
   $('#hidFldr5').hover(
      function() {
         $('#hvDotHFolder5').css("visibility","visible");
      }, function() {
         $('#hvDotHFolder5').css( "visibility","hidden" );
   });
   //
   $('#hvDotDFolder2').click(function(){
      $('#btnDFolder2').toggle();
   });
   $('#hvDotDFolder3').click(function(){
      $('#btnDFolder3').toggle();
   });
   $('#hvDotHFolder1').click(function(){
      $('#btnHidFldr1').toggle();
   });
   $('#hvDotHFolder2').click(function(){
      $('#btnHidFldr2').toggle();
   });
   $('#hvDotHFolder3').click(function(){
      $('#btnHidFldr3').toggle();
   });
   $('#hvDotHFolder4').click(function(){
      $('#btnHidFldr4').toggle();
   });
   $('#hvDotHFolder5').click(function(){
      $('#btnHidFldr5').toggle();
   });
   
   //1번 폴더명수정
       //2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
   $('#btnEdit1').click(function(){
      $('#dfdn1').css("display","none");
      $('#inp1').css("display","inline");
      $('#inp1').focus();
   });//$('#btnEdit1').click
      
      //3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp1')을 누르면
   $('#btnComp1').click(function(){
      //4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
      $.ajax({
         url:"<c:url value='/mysub/EditFolder1.do'/>",
         type:"post",
         dataType:"text",
         data:$('#frmEditname1').serialize(),
         success:function(data2){
            // input태그는 사라진다.
            $('#inp1').css("display","none");
            // span태그를 보인다
            $('#dfdn1').css("display","inline");
            //5) 응답받은 data를 span태그에 출력 
            console.log('서버로부터 받은 데이터:',data2);
            $('#dfdn1').html(data2);
         },
         error:function(){
            console.log('에러:',error.responseText);
         }
      });
   });//1번 폴더명 수정 끝
   //
   //2번 폴더명수정
       //2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
   $('#btnEdit2').click(function(){
      $('#dfdn2').css("display","none");
      $('#inp2').css("display","inline");
      $('#inp2').focus();
   });//$('#btnEdit1').click
      
      //3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp2')을 누르면
   $('#btnComp2').click(function(){
      //4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
      $.ajax({
         url:"<c:url value='/mysub/EditFolder2.do'/>",
         type:"post",
         dataType:"text",
         data:$('#frmEditname2').serialize(),
         success:function(data3){
            // input태그는 사라진다.
            $('#inp2').css("display","none");
            // span태그를 보인다
            $('#dfdn2').css("display","inline");
            //5) 응답받은 data를 span태그에 출력
            console.log('서버로부터 받은 데이터:',data3);
            $('#dfdn2').text(data3);
         },
         error:function(){
            console.log('에러:',error.responseText);
         }
      });
   });//2번 폴더명수정 끝
   //
   //3번 폴더명수정
    //2) span태그(기존이름)가 사라지고 input태그가 생긴다. (그와 동시에 커서도 input태그에)
   $('#btnEdit3').click(function(){
      $('#firF').css("display","none");
      $('#inp3').css("display","inline");
      $('#inp3').focus();
   });//$('#btnEdit3').click
      
      //3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
   $('#btnComp3').click(function(){
      //4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
      $.ajax({
         url:"<c:url value='/mysub/EditFolder3.do'/>",
         type:"post",
         dataType:"text",
         data:$('#frmEditname3').serialize(),
         success:function(data4){
            // input태그는 사라진다.
            $('#inp3').css("display","none");
            // span태그를 보인다
            $('#firF').css("display","inline");
            //5) 응답받은 data를 span태그에 출력
            console.log('서버로부터 받은 데이터:',data4);
            $('#firF').text(data4);
         },
         error:function(){
            console.log('에러:',error.responseText);
         }
      });
   });//3번 폴더명수정 끝
   //
   //4번 폴더명수정
   $('#btnEdit4').click(function(){
      $('#secF').css("display","none");
      $('#inp4').css("display","inline");
      $('#inp4').focus();
   });//$('#btnEdit4').click
      
   //3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
   $('#btnComp4').click(function(){
      //4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
      $.ajax({
         url:"<c:url value='/mysub/EditFolder4.do'/>",
         type:"post",
         dataType:"text",
         data:$('#frmEditname4').serialize(),
         success:function(data5){
            // input태그는 사라진다.
            $('#inp4').css("display","none");
            // span태그를 보인다
            $('#secF').css("display","inline");
            //5) 응답받은 data를 span태그에 출력
            console.log('서버로부터 받은 데이터:',data5);
            $('#secF').text(data5);
         },
         error:function(){
            console.log('에러:',error.responseText);
         }
      });
   });//4번 폴더명수정 끝
   //
   //5번 폴더명수정
   $('#btnEdit5').click(function(){
      $('#thrF').css("display","none");
      $('#inp5').css("display","inline");
      $('#inp5').focus();
   });//$('#btnEdit5').click
      
   //3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
   $('#btnComp5').click(function(){
      //4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
      $.ajax({
         url:"<c:url value='/mysub/EditFolder5.do'/>",
         type:"post",
         dataType:"text",
         data:$('#frmEditname5').serialize(),
         success:function(data6){
            // input태그는 사라진다.
            $('#inp5').css("display","none");
            // span태그를 보인다
            $('#thrF').css("display","inline");
            //5) 응답받은 data를 span태그에 출력
            console.log('서버로부터 받은 데이터:',data6);
            $('#thrF').text(data6);
         },
         error:function(){
            console.log('에러:',error.responseText);
         }
      });
   });//5번 폴더명수정 끝
   //
   //6번 폴더명수정
   $('#btnEdit6').click(function(){
      $('#forF').css("display","none");
      $('#inp6').css("display","inline");
      $('#inp6').focus();
   });//$('#btnEdit6').click
      
   //3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
   $('#btnComp6').click(function(){
      //4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
      $.ajax({
         url:"<c:url value='/mysub/EditFolder6.do'/>",
         type:"post",
         dataType:"text",
         data:$('#frmEditname6').serialize(),
         success:function(data7){
            // input태그는 사라진다.
            $('#inp6').css("display","none");
            // span태그를 보인다
            $('#forF').css("display","inline");
            //5) 응답받은 data를 span태그에 출력
            console.log('서버로부터 받은 데이터:',data7);
            $('#forF').text(data7);
         },
         error:function(){
            console.log('에러:',error.responseText);
         }
      });
   });//6번 폴더명수정 끝
   //
   //6번 폴더명수정
   $('#btnEdit7').click(function(){
      $('#fifF').css("display","none");
      $('#inp7').css("display","inline");
      $('#inp7').focus();
   });//$('#btnEdit7').click
      
   //3) inpuit태그에 사용자가 브라우저에서 입력 후 완료버튼('#btnComp3')을 누르면
   $('#btnComp7').click(function(){
      //4) ajax로 서버에 요청. 서버에서 변경된 data를 브라우저로 전송해준다
      $.ajax({
         url:"<c:url value='/mysub/EditFolder7.do'/>",
         type:"post",
         dataType:"text",
         data:$('#frmEditname7').serialize(),
         success:function(data8){
            // input태그는 사라진다.
            $('#inp7').css("display","none");
            // span태그를 보인다
            $('#fifF').css("display","inline");
            //5) 응답받은 data를 span태그에 출력
            console.log('서버로부터 받은 데이터:',data8);
            $('#fifF').text(data8);
         },
         error:function(){
            console.log('에러:',error.responseText);
         }
      });
   });//7번 폴더명수정 끝
   
   //왜 여기랑 .js 둘 다 해야 나오는 걸까.. 왜 수정할때마다 캐시 지워야하는걸까..ㅠㅠ

   
   var ctx = document.getElementById("myBarChart");
   
   var labels = new Array();
   var data = new Array();
   <c:forEach items="${myReportList}" var="result" >
      var json = new Object();
      labels.push("${result.paymentmon}");
      data.push("${result.money}");
      
      console.log('날짜 : ' + labels);
      console.log('금액 : ' + data);
   </c:forEach>
   
   var myBarChart = new Chart(ctx, {
     type: 'bar',
     data: {
       //labels: ["1월", "2월", "3월", "4월", "5월", "6월","7월","8월","9월","10월","11월","12월"],
       labels: labels, 
       datasets: [{
         label: "게시글 수",
         backgroundColor: "#4e73df",
         hoverBackgroundColor: "#2e59d9",
         borderColor: "#4e73df",
         //data: [0, 33, 56, 239, 929, 1522, 3500, 5312, 6251, 7841, 9821, 14984]
         data: data
       }],
     },
     options: {
       maintainAspectRatio: false,
       layout: {
         padding: {
           left: 10,
           right: 25,
           top: 25,
           bottom: 0
         }
       },
       scales: {
         xAxes: [{
           time: {
             unit: 'month'
           },
           gridLines: {
             display: false,
             drawBorder: false
           },
           ticks: {
             maxTicksLimit: 6
           },
           maxBarThickness: 25,
         }],
      /*   yAxes: [{
           ticks: {
             min: 0,
             max: 15000,
             maxTicksLimit: 5,
             padding: 10
             
           },
        */   
           
           yAxes: [{
              ticks: {
                maxTicksLimit: 10000,
                padding: 10,
                Max: 10000000,
                callback: function(value, index, values) {
                   value = value.toString();
                   value = value.split(/(?=(?:...)*$)/);
                   value = value.join(',');
                
                  return value+"원";
                }
              },           
           
           gridLines: {
             color: "rgb(234, 236, 244)",
             zeroLineColor: "rgb(234, 236, 244)",
             drawBorder: false,
             borderDash: [2],
             zeroLineBorderDash: [2]
           }
         }],
       },
       legend: {
         display: false
       },
       tooltips: {
         titleMarginBottom: 10,
         titleFontColor: '#6e707e',
         titleFontSize: 14,
         backgroundColor: "rgb(255,255,255)",
         bodyFontColor: "#858796",
         borderColor: '#dddfeb',
         borderWidth: 1,
         xPadding: 15,
         yPadding: 15,
         displayColors: false,
         caretPadding: 10,
         
       }
     }
   });


   //Area Chart Example(월별 매칭 수 추이)
   var ctx = document.getElementById("myAreaChart2");
   
   var labels = new Array();
   var data = new Array();
   <c:forEach items="${myReportList}" var="result" >
      var json = new Object();
      labels.push("${result.paymentmon}");
      data.push("${result.mondata}");
      
      console.log('날짜 : ' + labels);
      console.log('건수 : ' + data);
   </c:forEach>
   
   var myLineChart2 = new Chart(ctx, {
     type: 'line',
     data: {
       //labels: ["1월", "2월", "3월", "4월", "5월", "6월","7월","8월","9월","10월","11월","12월"],
       labels: labels, 
       datasets: [{
         label: "매칭수",
         lineTension: 0.3,
         backgroundColor: "rgba(78, 115, 223, 0.05)",
         borderColor: "rgba(78, 115, 223, 1)",
         pointRadius: 3,
         pointBackgroundColor: "rgba(78, 115, 223, 1)",
         pointBorderColor: "rgba(78, 115, 223, 1)",
         pointHoverRadius: 3,
         pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
         pointHoverBorderColor: "rgba(78, 115, 223, 1)",
         pointHitRadius: 10,
         pointBorderWidth: 2,
         //data: [600, 300, 400, 300, 400, 300, 700, 800, 400, 300, 400, 700],
         data: data
       }],
     },
     options: {
       maintainAspectRatio: false,
       layout: {
         padding: {
           left: 10,
           right: 25,
           top: 25,
           bottom: 0
         }
       },
       scales: {
         xAxes: [{
           time: {
             unit: 'date'
           },
           gridLines: {
             display: false,
             drawBorder: false
           },
           ticks: {
             maxTicksLimit: 7
           }
         }],
         yAxes: [{
           ticks: {
             maxTicksLimit: 10,
             padding: 10,
             Max: 100,
             callback: function(value, index, values) {
                value = value.toString();
                value = value.split(/(?=(?:...)*$)/);
                value = value.join(',');
             
               return value+"건";
             }
           },
           gridLines: {
             color: "rgb(234, 236, 244)",
             zeroLineColor: "rgb(234, 236, 244)",
             drawBorder: false,
             borderDash: [2],
             zeroLineBorderDash: [2]
           }
         }],
       },
       legend: {
         display: false
       },
       tooltips: {
         backgroundColor: "rgb(255,255,255)",
         bodyFontColor: "#858796",
         titleMarginBottom: 10,
         titleFontColor: '#6e707e',
         titleFontSize: 14,
         borderColor: '#dddfeb',
         borderWidth: 1,
         xPadding: 15,
         yPadding: 15,
         displayColors: false,
         intersect: false,
         mode: 'index',
         caretPadding: 10
         
       }
     }
   });//myAreaChart2



   //Pie Chart Example3-ott
   var ctx = document.getElementById("myPieChart3");
   
   var labels = new Array();
   var data = new Array();
   <c:forEach items="${myReportList}" var="result" >
      var json = new Object();
      labels.push("${result.subservice}");
      data.push("${result.money}");
      
      console.log('서비스 : ' + labels);
      console.log('금액 : ' + data);
   </c:forEach>
   
   var myPieChart3 = new Chart(ctx, {
   type: 'doughnut',
   data: {
    //labels: ["왓챠", "티빙", "디즈니", "웨이브", "넷플릭스", "라프텔"],
    labels: labels,
    datasets: [{
      //data: [5,20,30,10,30,5],
      data: data,
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#f6c23e', '#e74a3b', '#858796'],
      hoverBackgroundColor: ['#2e59d9', '#17a673'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
   },
   options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
   },
   });
   
   //Pie Chart Example3-ott
   var ctx = document.getElementById("myPieChart4");
   
   var labels = new Array();
   var data = new Array();
   <c:forEach items="${myReportList}" var="result" >
      var json = new Object();
      labels.push("${result.subservice}");
      data.push("${result.mondata}");
      
      console.log('서비스 : ' + labels);
      console.log('건수 : ' + data);
   </c:forEach>
   
   
   var myPieChart4 = new Chart(ctx, {
   type: 'doughnut',
   data: {
    //labels: ["왓챠", "티빙", "디즈니", "웨이브", "넷플릭스", "라프텔"],
    labels: labels,
    datasets: [{
      //data: [5,20,30,10,30,5],
      data: data,
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#f6c23e', '#e74a3b', '#858796'],
      hoverBackgroundColor: ['#2e59d9', '#17a673'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
   },
   options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
   },
   });


</script>