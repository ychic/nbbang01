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

<script>
function categoryChange(e) {
  var partyAllotmentPrice_2 = ["12000"];
  var partyAllotmentPrice_3 = ["16000"];
  var partyAllotmentPrice_4 = ["16000"];
  var target = document.getElementById("partyAllotmentPrice");

  if(e.value == "2") var d = partyAllotmentPrice_2;
  else if(e.value == "3") var d = partyAllotmentPrice_3;
  else if(e.value == "4") var d = partyAllotmentPrice_4;

  target.options.length = 0;

  for (x in d) {
    var opt = document.createElement("option");
    opt.value = d[x];
    opt.innerHTML = d[x];
    target.appendChild(opt);
  } 
}
</script>

<div class="container">
   <div>
      <form id="myform" class="form-horizontal" method="post" action="<c:url value='/partyBbsWrite.do'/>">
      	 <input type="hidden" name="partyLeader" value="y" />
      	 <input type="hidden" name="partyMembership" value="normal" />
      	 <input type="hidden" name="pMMember" value="${email }" />
		 <input type="hidden" name="partyActivation" value="true" /> <!-- 파티활성화값 불러오기 -->
		 
         <div class="form-group">
            <label class="col-sm-2 control-label">서비스</label>
            <div class="col-sm-4">
				<select style="width: 595px;" class="form-control" name="partyCategoryName">
	         		<option value="" disabled selected hidden>* 파티 모집할 서비스를 선택하세요</option>
		            <option value="netflix">넷플릭스</option>
	    	        <option value="watcha">왓챠</option>
	       	        <option value="disney">디즈니</option>
	       	  		<option value="laftel">라프텔</option>
	       		    <option value="tving">티빙</option>
	       		    <option value="wavve">웨이브</option>
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
				<select style="width: 595px;" class="form-control" name="partyMaxCapacity" onchange="categoryChange(this)">
	         		<option value="" disabled selected hidden>* 자신을 포함한 파티 인원을 선택하세요</option>
		            <option value="2">2</option>
		            <option value="3">3</option>
	       	        <option value="4">4</option>
				</select>
            </div>
          </div>
          
		  <div class="form-group">
			<label class="col-sm-2 control-label">결제 금액</label>
            <div class="col-sm-4">
            	<select style="width: 595px;" class="form-control" id="partyAllotmentPrice" name="partyAllotmentPrice" onchange="categoryChange(this)">
	         		<option value="" disabled selected hidden>* 파티 인원을 먼저 선택하세요</option>
				</select>
            </div>
          </div>
         
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                 	 <textarea style="resize:none;" class="summernote" name="partyContent"></textarea>
                     <!-- <textarea cols="50" rows="8" style="width: 100%; resize:none;" class="form-control" name="partyContent" placeholder="내용을 입력하세요"></textarea>  
                   --></div>
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

<!-- 섬머노트 스크립트 -->
<script>
   $('.summernote').summernote({
        height: 250,
        lang: "ko-KR",
        placeholder: "내용을 입력하세요",
        toolbar: [
                // [groupName, [list of button]]
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                ['color', ['forecolor','color']],
              ],
         fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
         fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
   });
</script>