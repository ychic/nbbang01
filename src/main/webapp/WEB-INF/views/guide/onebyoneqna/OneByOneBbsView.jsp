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

    <fieldset>글 상세보기 페이지
	 
          
				<form> 
				<h3 id="hsbj">제목</h3> 
				<input type="text" id="subject" name="subject"><br/>
				</form>

				<form> 
				<h3 id="hname">작성자</h3> 
				<input type="text" id="name"  name="subject"><br/>
				</form>
           

	    <form>

		    <textarea name="content" id="txtarea" rows="4" cols="100"
			 placeholder="내용을 입력하세요.">
 
			</textarea>
		</form>


       <p> 
          <input type="button" id="inbt" value="목록" 
		  onclick="location.href='oneByOneBbsList.do'"/>
        
          <input type="button" id="inbt" value="수정" 
		  onclick="location.href='oneByOneBbsModify.do'"/>
		  
          <input type="button" id="inbt" value="삭제" onclick=""/>
       </p>


</fieldset>
  