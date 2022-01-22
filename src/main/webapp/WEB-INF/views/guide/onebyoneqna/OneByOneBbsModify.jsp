<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   </div>
</header>

  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  
<style>
   div{
      color:black;
   }
   .btns1{
	width:100%;
	display:inline-block;
	text-align:center;
	margin-left:100px;
	}
	.writeform{
	width:90%;
	margin-bottom:100px;
	}
   
   /* 광고 영역 */
	.ad_one, .ad_two{
		background-color:red;
		width: 188.5px;
		height:377px;
		display: inline-block;
		position: fixed;
		top:150px;
		background-size: cover;
		background-position: center;
		background-image: url("<%=request.getContextPath()%>/resources/account/ad_1.PNG");
		animation: ad_one_ani 16s infinite;
	}
	
	.ad_one{
		left:30px;
	}
	
	.ad_two{
		right:30px;
	}
	
	@keyframes ad_one_ani {
		33%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_2.PNG")}
		66%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_3.PNG")}
		100%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_1.PNG")}
	}
</style>
<body>

<!-- 광고 1 -->
<div class="ad_one">
	
</div>



<div class="container">


		<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">1:1 문의게시판</h1>
		<h4 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">자유롭게 문의를 남겨주시면 빠른 시간 안에 답장하겠습니다.</h4>
		<hr class="col-md-12" style="width:1000px;margin-left:50px;"/>


   <div class="writeform">
      <form id="myform" class="form-horizontal" method="post" action="<c:url value='/OBOupdate.do?inqno=${record.inqno}'/>">
         <div class="form-group">
            <label class="col-sm-2 control-label">제목</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="inqtitle" value="${record.inqtitle}">
            </div>
         </div>
       
         <div class="form-group">
            <label class="col-sm-2 control-label">닉네임</label>
            <div class="col-sm-4">
	            <input type="text" class="form-control" name="nickname" value="${sessionScope.nickname}" disabled>
	        </div>
	        <label class="col-sm-2 control-label">이메일</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="email" value="${sessionScope.email}" disabled>
            </div>
         </div>
         
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                     <textarea class="summernote" name="inqcontent" rows="7" cols="100">${record.inqcontent}</textarea>  
                  </div>
               </div>
            </div>
         </div>
         <!-- 버튼 위치 스타일 -->
			<div class="btns1">
               <button class="btn btn-warning" onclick="submit()">수정</button>
               <button class="btn btn-list" onclick="location.href='oneByOneBbsView.do">취소</button>
        	</div>
         
      </form>
      
   </div>
   
</div>

<!-- 광고 2 -->
<div class="ad_two">
	
</div>

</body>
<script>
   $('.summernote').summernote({
      
        height: 250,
        lang: "ko-KR",
        placeholder: "여기에 입력하세요.",
        toolbar: [
                // [groupName, [list of button]]
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                ['color', ['forecolor','color']],
                ['table', ['table']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert',['picture','link','video']],
                ['view', ['fullscreen', 'help']]
              ],
         fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
         fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
   
   });
</script>
