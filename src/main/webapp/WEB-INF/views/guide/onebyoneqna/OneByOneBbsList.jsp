<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>



<!--style-->
<style>
*{margin:0; padding:0}
div#wrap {width:100%; height:1000px;}
body{font-size:12px;}
 
table, th, td { margin:0 auto;  border:1px solid #333333; border-collapse:collapse; padding:5px }
table {width:1000px; }
 
/*헤드부 */
caption{margin:0 auto; font-size:15px; font-weight:bolder; text-decoration:none; padding-top:25px; padding-bottom:30px;}
thead { background-color:#a98701 ; height:40px;}
 
/*바디부*/
.toNo, .tdDate , .tdCount {text-align:center;}
 
 
/*버텀부*/
tfoot { text-align:center;}
/*tbody*/
tbody a{ color:#333; }
 
tbody a:link{
    font-size:12px;
    font-family:굴림;
    text-decoration:none;
 }
 
tbody a:visited{
    font-size:12px;
    color:#333;
    font-family:굴림;
    text-decoration:none;
         
 }
tbody a:hover{ text-decoration:underline;}
tbody a:active { font-size:15px; font-family:궁서;}
 
 /*tfoot*/
 
 tfoot a{ color:#06F; }
 
 tfoot a:link{
    font-size:10pt;
    font-family:굴림;
    text-decoration:none;
 }
 
 tfoot a:visited{
    font-size:12px;
    font-family:굴림;
    text-decoration:none;
         
 }
 tfoot a:hover{ text-decoration:underline;}
 tfoot a:active { font-size:13px; font-family:궁서;}


 
div#search { text-align:center; padding-top:35px; height:0px;
}
div#writebt { text-align:center; margin-left:950px; 
             }
input#inbt {background-color:#ee7beb;
            color:white;
            font-size: 14px;
            font-weight: 600;
            border-radius: 6px;
            display: inline-block;
            padding: 2px;
            text-decoration: none;
            box-shadow: 1px 1px 0px 0px rgb(85, 30, 32); }
input#insubmit {background-color:#ee7beb;
            color:white;
            font-size: 14px;
            font-weight: 600;
            border-radius: 6px;
            display: inline-block;
            padding: 2px;
            text-decoration: none;
            box-shadow: 1px 1px 0px 0px rgb(85, 30, 32); }
</style>


<body>

<div id="wrap">
    <table>
    <!-- 해드부 
<caption id="captionHead">
				<h1>1:1 문의하기</h1>
 <h3>nbbang 서비스 이용 시 불편사항이나 문의사항을 보내주시면<br><br> 
 신속하고 친절하게 안내해 드리겠습니다<br>
 </h3>

</caption>
 -->

       <!-- //검색 폼 영역 -->
         <colgroup>
		 <col width="50"/>
		 <col width="600"/>
		 <col width="150"/>
         <col width="100"/>
		 <col width="50"/>
         </colgroup>
    <!-- 바디부 -->
        <thead>
         <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성일</th>
            <th>작성자</th> 
         </tr>
        </thead>
 
    <!-- 버텀부 -->
    <tbody>
				<c:if test="${empty listPagingData.lists}" var="isEmpty">
					<tr>
						<td colspan="4">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
			
            <c:if test="${not isEmpty}">
					<c:forEach var="item" items="${listPagingData.lists}" varStatus="loop">
						<tr>
							<td>${listPagingData.totalRecordCount - (((listPagingData.nowPage - 1) * listPagingData.pageSize) + loop.index)}</td>			
							
							<td class="text-left"><a href="<c:url value="/oneByOneBbsView.do?inqno=${item.inqno}&nowPage="/><c:out value="${param.nowPage }" default="1"/>">
								${item.inqtitle }</a> <span class="badge">${item.commentCount }</span></td>
							<td>${item.email }</td>
							<td>${item.inqpostdate }</td>
						</tr>
					</c:forEach>
			</c:if>
			
     </tbody>
	 </table>
	<a class="btn btn-default pull-right"
			href="<c:url value='/oneByOneBbsWrite.do'/>">글쓰기</a>

	 <!-- 페이징 -->
	<c:if test="${listPagingData.lists.size() !=0 }">
		<div class="row">
			<div class="col-md-12 text-center">${listPagingData.pagingString}</div>
		</div>
	</c:if>
	<!-- 검색용 UI -->
	<div class="row">
		<div class="text-center">
			<form class="form-inline" method="post"
				action="<c:url value='/OBOList.do'/>">
				<div class="form-group">
				
					<!-- searchColumn /searchWord 의 파라미터로 넘어감 -->
					<select name="searchColumn" class="form-control">
						<option value="title">제목</option>
						<option value="name">작성자</option>
						<option value="content">내용</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" name="searchWord" class="form-control" />
				</div>
				<button type="submit" class="btn btn-primary">검색</button>
			</form>
		</div>
	</div>
</div>

	