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
   
	.writeform{
		width:90%;
		margin-bottom:100px;
	}
	
	.btns1{
		width:925px;
		display:inline-block;
		text-align:right;
		margin-left:100px;
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

<%String referer = request.getHeader("referer");%>

<!-- 광고 1 -->
<div class="ad_one">
	
</div>

<div class="container">
		<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">
			<%if(referer.contains("recommand")){%>
         		추천게시판에 글쓰기
         		<%} else{%>
         		자유게시판에 글쓰기
         		<%}%>
		</h1>
		<hr class="col-md-12" style="width:1000px; margin-left:50px;"/>
   <div class="writeform">
      <form id="myform" class="form-horizontal" method="post" action="<c:url value='/ussrWrite.do'/>">
         <div class="form-group">
            <label class="col-sm-2 control-label">닉네임</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="nickname" value="${sessionScope.nickname}" readonly="readonly">
               <input type="hidden" name="email" value="${sessionScope.email}"/>
            </div>
            <label class="col-sm-2 control-label">게시판</label>
            <div class="col-sm-4">
               <select class="form-control" name ="ussrcategoryname" id="ussrcategoryname">
                 <option value="recommand" <%if(referer.contains("recommand")){%>selected="selected"<%}%>>추천게시판</option>
                 <option value="free" <%if(referer.contains("free")){%>selected="selected"<%}%>>자유게시판</option>
               </select>
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">제목</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="ussrtitle" placeholder="제목을 입력하세요">
            </div>
            <label class="col-sm-2 control-label">주제</label>
            <div class="col-sm-4">
               <select class="form-control" name="navcategory" id="navcategory">
               	<%if(referer.contains("recommand")){%>
                 <option value="recommandService">구독서비스 추천</option>
                 <option value="recommandContents">컨텐츠 추천</option>
                 <option value="recommandTips">꿀팁 추천</option>
                <%} else{%>
                 <option value="freeNormal">일반</option>
                 <option value="freeInfo">정보</option>
                 <option value="freeReview">리뷰</option>
                <%} %>
               </select>
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
         
         <div class="btns1">
         	<button class="btn btn-secondary" onclick="<%if(referer.contains("recommand")){%>
         		location.href='RecommandList.do'
         		<%} else{%>
         		location.href='FreeList.do'
         		<%}%>" >취소</button>
         	<button class="btn btn-primary" onclick="submit()">등록</button>
         </div>
      </form>
   </div>
</div>

<!-- 광고 2 -->
<div class="ad_two">
	
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