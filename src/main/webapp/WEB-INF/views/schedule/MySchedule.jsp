<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</div>
</header>

<div class="container">
	<div class="page-header">
		<h1>
			결제일 스케줄러 <small>결제일 정리하기 힘드셨죠? 이젠 편리하게 하세요</small>
		</h1>
		
	</div>	
	<!DOCTYPE html>
	<html lang='en'>
	  <head>
	    <meta charset='utf-8' />
	    
	    <link href='<c:url value="/resources/css/main.css"/>' rel='stylesheet' />
	    <script src='<c:url value="/resources/js/main.js"/>'></script>
	    <script src='<c:url value="/resources/js/ko.js"/>'></script>
	    <style>
	    		
	  	</style>
	    <script>
	
	      document.addEventListener('DOMContentLoaded', function() {
	        var calendarEl = document.getElementById('calendar');
	        var calendar = new FullCalendar.Calendar(calendarEl, {
	          initialView: 'dayGridMonth',
	          locale: 'ko',
	        	  events:[ // 일정 데이터 추가 , DB의 event를 가져오려면 JSON 형식으로 변환해 events에 넣어주면된다.
	                    {
	                        title:'일정',
	                        start:'2022-01-26 00:00:00',
	                        end:'2022-01-27 24:00:00' 
	                        // color 값을 추가해 색상도 변경 가능
	                    }
	                ], headerToolbar: {
	                    center: 'addEventButton' // headerToolbar에 버튼을 추가
	                }, customButtons:{
	                	addEventButton:{
	                		text:"일정 추가",
	                		click:function(){
	                			$("#calendarModal").modal("show");
	                			
	                			$("addCalendar").on("click",function(){
	                				var content = $("#calendar_content").val();
	                				var start_date = $("#calendar_start_date").val();
	                				var end_date = $("#calendar_end_date").val();
	                				
	                				//내용 입력 여부 확인
	                				if(content == null || content == ""){
	                					alert("내용을 입력하세요");
	                				}else if(start_date == "" || end_date ==""){
	                					alert("날짜를 입력하세요");
	                				}else if(new date(end_date)- new Date(start_date) < 0){
	                					alert("종료일이 시작일보다 먼저입니다");
	                				}else{
	                					var obj = {
	                						"title" : content,
	                						"start" : start_date,
	                						"end" : end_date
	                					}
	                					
	                					console.log(obj);
	                				}
	                			});
	                		}
	                	}
	                },
	                editable: false,//false로 변경시 draggable 작동x
	                displayEventTime: false//시간표시 x
	    	  	        	 
	        });
	        calendar.render();
	      });
	
	    </script>
	    

	    
	  </head>
	  <body>
	
		<div id="calendarBox">
	        <div id="calendar"></div>
	    </div>
	
	    <!-- modal 추가 -->
	    <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	        aria-hidden="true">
	        <div class="modal-dialog" role="document">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <h3 class="modal-title" id="exampleModalLabel">결제일을 입력하세요.</h5>
	                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                        <span aria-hidden="true">&times;</span>
	                    </button>
	                </div>
	                <div class="modal-body">
	                    <div class="form-group">
	                        <label for="taskId" class="col-form-label">구독 플렛폼(ex.넷플릭스, 유튜브 프리미엄.....)</label>
	                        <input type="text" class="form-control" id="calendar_content" name="calendar_content">
	                        <label for="taskId" class="col-form-label">시작 날짜</label>
	                        <input type="date" class="form-control" id="calendar_start_date" name="calendar_start_date">
	                        <label for="taskId" class="col-form-label">종료 날짜</label>
	                        <input type="date" class="form-control" id="calendar_end_date" name="calendar_end_date">
	                        <label for="taskId" class="col-form-label">스케줄 내용</label>
	                        <textarea class="form-control" id="calendar_user" name="calendar_user"></textarea>
	                    </div>
	                </div>
	                <div class="modal-footer">
	                    <button type="button" class="btn btn-warning" id="addCalendar">추가</button>
	                    <button type="button" class="btn btn-secondary" data-dismiss="modal"
	                        id="sprintSettingModalClose">취소</button>
	                </div>
	    
	            </div>
	        </div>
	    </div>		    
	  </body>
	</html>
</div>
