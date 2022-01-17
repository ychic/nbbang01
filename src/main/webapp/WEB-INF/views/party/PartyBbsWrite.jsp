<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>

  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  
<style>
   div {
      color:black;
   }
   
   .container {
   	  width: 750px;
   }
</style>

<div class="container">
   <div>
      <form id="myform" class="form-horizontal" method="post" action="<c:url value='/partyBbsWrite.do'/>">
		 <input type="hidden" name="partyActivation" value="true" /> <!-- 파티활성화값 불러오기 -->
		 
         <div class="form-group">
            <label class="col-sm-2 control-label">서비스</label>
            <div class="col-sm-4">
				<select style="width: 595px;" class="form-control" name="partyCategoryName">
	         		<option value="" disabled selected hidden>* 파티 모집할 서비스를 선택하세요</option>
		            <option value="넷플릭스">넷플릭스</option>
	    	        <option value="왓챠">왓챠</option>
	       	        <option value="디즈니">디즈니</option>
	       	  		<option value="라프텔">라프텔</option>
	       		    <option value="티빙">티빙</option>
	       		    <option value="웨이브">웨이브</option>
				</select>
            </div>
          </div>
		 
         <div class="form-group">
            <label class="col-sm-2 control-label">파티 제목</label>
            <div class="col-sm-4">
               <input style="width: 595px;" type="text" class="form-control" name="partyTitle" placeholder="제목을 입력하세요">
            </div>
         </div>
         
         <div class="form-group">
            <label class="col-sm-2 control-label">파티 인원</label>
            <div class="col-sm-4">
				<select style="width: 595px;" class="form-control" name="partyMaxCapacity">
	         		<option value="" disabled selected hidden>* 자신을 포함한 파티 인원을 선택하세요</option>
		            <option value="2">2</option>
	    	        <option value="3">3</option>
	       	        <option value="4">4</option>
	       	  		<option value="5">5</option>
	       		    <option value="6">6</option>
				</select>
            </div>
          </div>
          
		  <div class="form-group">
			<label class="col-sm-2 control-label">결제 금액</label>
            <div class="col-sm-4">
               <input type="text" style="width: 595px;" class="form-control" name="partyAllotmentPrice" placeholder="결제 금액을 입력하세요">
            </div>
          </div>
          
		  <div class="form-group">
			<label class="col-sm-2 control-label">멤버십 종류</label>
            <div class="col-sm-4">
               <input type="text" style="width: 595px;" class="form-control" name="partyMembership" placeholder="멤버십 종류를 입력하세요">
            </div>
          </div>
         
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                     <textarea cols="50" rows="8" style="width: 100%; resize:none;" class="form-control" name="partyContent" placeholder="내용을 입력하세요"></textarea>  
                  </div>
               </div>
            </div>
         </div>
         
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-4">
               <button class="btn btn-warning">등록</button>
            </div>
         </div>
      </form>
   </div>
</div>