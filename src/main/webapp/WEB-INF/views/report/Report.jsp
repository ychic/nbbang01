<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	</div>
</header>

<!-- 신고 페이지 -->

<!-- 서머노트를 위해 추가해야할 부분 -->
<script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>

<style>
	.reportTitle{
		font-size:50px;
		font-family:'Nanum Gothic', sans-serif;
		padding-bottom:30px;
	}
	#myform{
		width:90%;
		padding-bottom:30px;
	}
</style>

<div class="container">
	<div class="reportTitle">
	신고 페이지
	</div>
   <div>
      <form id="myform" class="form-horizontal" method="post" action="<c:url value='/reportInsert.do'/>">
         <div class="form-group">
            <label class="col-sm-2 control-label">ID</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="email" value="${sessionScope.email}">
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">카테고리</label>
            <div class="col-sm-4">
               <select class="form-control" name="reportbbs">
               	   <option value="채팅" <c:if test="${fn:contains(reportbbs,'팅')}">selected</c:if>>채팅</option>
               	   <option value="MY구독" <c:if test="${fn:contains(reportbbs,'독')}">selected</c:if>>MY구독</option>
               	   <option value="MY파티" <c:if test="${fn:contains(reportbbs,'파')}">selected</c:if>>MY파티</option>
               	   <option value="MY스케쥴" <c:if test="${fn:contains(reportbbs,'쥴')}">selected</c:if>>MY스케쥴</option>
               	   <option value="MY리포트" <c:if test="${fn:contains(reportbbs,'포')}">selected</c:if>>MY리포트</option>
	               <option value="파티게시판" <c:if test="${fn:contains(reportbbs,'티')}">selected</c:if>>파티게시판</option>
                   <option value="추천게시판" <c:if test="${fn:contains(reportbbs,'천')}">selected</c:if>>추천게시판</option>
                   <option value="자유게시판" <c:if test="${fn:contains(reportbbs,'유')}">selected</c:if>>자유게시판</option>
                   <option value="기타" <c:if test="${fn:contains(reportbbs,'기')}">selected</c:if>>기타</option>
               </select>
            </div>
          </div>
          
         <div class="form-group">
            <label class="col-sm-2" style="padding-left:108px">신고사유</label>
            <div class="col-sm-4">
               <input type="radio" class="custom-radio" name="reporttype" value="광고" <c:if test="${reporttype=='광고'}"> checked</c:if>>광고
               <input type="radio" class="custom-radio" name="reporttype" value="욕설/비방" <c:if test="${reporttype=='욕설/비방'}"> checked</c:if>>욕설/비방
               <input type="radio" class="custom-radio" name="reporttype" value="기타" <c:if test="${reporttype=='기타'}"> checked</c:if>>기타
            </div>
         </div>
         
         
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                     <textarea class="summernote" name="reportcontent"></textarea>  
                  </div>
               </div>
            </div>
         </div>
         
         <div class="form-group" >
            <div class="col-sm-offset-2 col-sm-4">
               <button class="btn btn-warning" onclick="submit()">신고하기</button>
            </div>
         </div>
      </form>
   </div>
</div>

<script>
   $('.summernote').summernote({
      
        height: 250,
        lang: "ko-KR",
        placeholder: "신고 사유를 여기에 자세히 입력해 주세요.</br></br>[예시]</br>게시글 102번에 부적절한 욕설이 들어가 있습니다.",
        toolbar: [
                // [groupName, [list of button]]
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                ['color', ['forecolor','color']],
                ['table', ['table']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert',['picture','link','video']]
                //['view', ['fullscreen', 'help']]
              ],
         fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
         fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
        
        
   });
</script>
