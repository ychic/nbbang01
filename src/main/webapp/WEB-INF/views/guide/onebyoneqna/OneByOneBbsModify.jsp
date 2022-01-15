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
            box-shadow: 1px 1px 0px 0px rgb(85, 30, 32); }
 </style>

 <body>

    <fieldset>
		글 수정 페이지

		<form class="form-horizontal" method="post"  action="<c:url value='/OBOupdate.do?inqno=${record.inqno}'/>">
		<div class="form-group">
            <label class="col-sm-2 control-label">제목</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="inqtitle" value="${record.inqtitle}">
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">작성자</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" name="email" value="${sessionScope.email}">
            </div>
         </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
               <div class="row">
                  <div class="col-sm-12">
                     <textarea class="summernote" name="inqcontent">${record.inqcontent}</textarea>  
                  </div>
               </div>
            </div>
         </div>
		
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<button class="btn btn-info" onclick="submit()">수정</button>
				</div>
			</div>
		</form>
		
				<div class="col-sm-offset-2 col-sm-4">
					<button class="btn btn-info" onclick="location.href='oneByOneBbsView.do">취소</button>
				</div>




	</fieldset>
