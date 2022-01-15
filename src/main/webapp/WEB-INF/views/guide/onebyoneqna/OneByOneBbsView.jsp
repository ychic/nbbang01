<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
</header>


<style type="text/css">
*{margin:0; padding:0;}
fieldset {border:5px solid #996633; border-radius:17px; width:1000px; height:300px;margin:0 auto; margin-top:100px;margin-bottom:200px;}
       
table thead tr th {background-color: gray;}
form {text-align:center;}
h3#hsbj {margin-top:15px; font-weight:bolder; font-size:15px;}
h3#hname {margin-top:15px; margin-bottom:10px; font-weight:bold; font-size:15px;}
input#subject {width:400px; height:20px; margin-top:15px; border-radius:5px; border:2px solid #996633;}
input#name {width:100px; height:20px;  border-radius:5px; border:2px solid #996633;}
textarea#txtarea {margin-top:15px; border:2px solid #996633; border-radius:5px;}
p {float:right; margin-right:15px; margin-top:18px;}
input#inbt {background-color:#ee7beb;
            color:white;
            font-size: 14px;
            font-weight: 600;
            border-radius: 6px;
            display: inline-block;
            padding: 2px;
            text-decoration: none;
            box-shadow: 1px 1px 0px 0px rgb(85, 30, 32);
  }
 </style>

 <body>

    <fieldset>view페이지
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<table class="table table-bordered table-striped">
					<tr>
						<th class="col-md-2 text-center">번호</th>
						<td>${record.inqno}</td>
					</tr>
					<tr>
						<th class="text-center">제목</th>
						<td>${record.inqtitle}</td>
					</tr>
					<tr>
						<th class="text-center">작성자</th>
						<td>${record.email}</td>
					</tr>
					<tr>
						<th class="text-center">등록일</th>
						<td>${record.inqpostdate}</td>
					</tr>
					<tr>
						<th class="text-center" colspan="2">내용</th>
					</tr>
					<tr>
						<td colspan="2">${record.inqcontent}</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="col-sm-offset-2 col-sm-4">
			<button class="btn btn-info" onclick="javascript:isList();">목록</button>
		</div>
		<div class="col-sm-offset-2 col-sm-4">
			<button class="btn btn-info" onclick="javascript:isUpdate();">수정</button>
		</div>
		<div class="col-sm-offset-2 col-sm-4">
			<button class="btn btn-info" onclick="javascript:isDelete();">삭제</button>
		</div>
		<!-- 삭제시 뜨는 얼럿창  -->


</fieldset>
<script>
	function isList(){
		location.replace("<c:url value="/OBOList.do?nowPage=${param.nowPage}"/>");
		
	}
	function isUpdate(){
		location.replace("<c:url value="/OBOupdate.do?inqno=${record.inqno}"/>");
	
	}
	function isDelete(){
		if(confirm("정말로 삭제 하시겠습니까?")){
			location.replace("<c:url value="/OBODelete.do?inqno=${record.inqno}"/>");
		}
	}
</script>