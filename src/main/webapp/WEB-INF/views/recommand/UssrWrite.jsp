<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- UssrWrite.jsp -->
   </div>
</header>

  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  
<style>
   div{
      color:black;
   }
</style>

<div class="container">
   <div>
      <form id="myform" class="form-horizontal" method="post" action="<c:url value='/ussrWrite.do'/>">
         <div class="form-group">
            <label class="col-sm-2 control-label">이메일</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="email" value="${sessionScope.email}" readonly="readonly">
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">게시판</label>
            <div class="col-sm-4">
               <select class="form-control" name ="ussrcategoryname" id="ussrcategoryname">
                 <option value="recommand">추천게시판</option>
                 <option value="free">자유게시판</option>
               </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">주제</label>
            <div class="col-sm-4">
               <select class="form-control" name="navcategory" id="navcategory">
                 <option value="recommandService">구독서비스 추천</option>
                 <option value="recommandContents">컨텐츠 추천</option>
                 <option value="recommandTips">꿀팁 추천</option>
               </select>
            </div>
          </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">제목</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="ussrtitle" placeholder="제목을 입력하세요">
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                     <textarea class="summernote" name="ussrcontent"></textarea>  
                  </div>
               </div>
            </div>
         </div>
         
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-4">
               <button class="btn btn-info" onclick="submit()">등록</button>
            </div>
         </div>
      </form>
   </div>
</div>
<!-- 카테고리 선택 Ajax -->
<script>
$('#ussrcategoryname').change(function(){
	$.ajax({
			url:"<c:url value="/categoryChange.do"/>",
			data:{ussrcategoryname:$(this).val()},
			dataType:'json'
		}).done(function(data){
			var options="";
			$.each(data,function(key,value){
				options+="<option value='"+key+"'>"+value+"</option>";
			});
			$('#navcategory').html(options);
			
		}).fail(function(req,error){
			console.log('응답코드:%s,에러 메시지:%s,error:%s',
					req.status,
					req.responseText,
					error);
		});
});
</script>
<!-- 섬머노트 스크립트 -->
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