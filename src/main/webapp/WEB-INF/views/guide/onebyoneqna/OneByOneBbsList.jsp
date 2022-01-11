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
    <!-- 해드부 -->
<caption id="captionHead">
				<h1>1:1 문의하기</h1>
 <h3>nbbang 서비스 이용 시 불편사항이나 문의사항을 보내주시면<br><br> 
 신속하고 친절하게 안내해 드리겠습니다<br>
 </h3>

</caption>
 

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
            <th>조회</th>  
         </tr>
        </thead>
 
    <!-- 버텀부 -->
    <tbody>
        <tr>
            <td class="tdNo">1</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.12.12</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">66</td>
         </tr>
		 <tr>
            <td class="tdNo">2</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.11.19</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">46</td>
         </tr>
		 <tr>
            <td class="tdNo">3</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.11.11</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">35</td>
         </tr>
		 <tr>
            <td class="tdNo">4</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.08.31</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">7</td>
         </tr>
		 <tr>
            <td class="tdNo">5</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.08.24</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">11</td>
         </tr>
		 <tr>
            <td class="tdNo">6</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.07.29</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">20</td>
         </tr>
		 <tr>
            <td class="tdNo">7</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.06.22</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">21</td>
         </tr>
		 <tr>
            <td class="tdNo">8</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.05.30</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">34</td>
         </tr>
		 <tr>
            <td class="tdNo">9</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.04.26</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">14</td>
         </tr>
		 <tr>
            <td class="tdNo">10</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.04.12</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">12</td>
         </tr>
		 <tr>
            <td class="tdNo">11</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.04.01</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">19</td>
         </tr>
		 <tr>
            <td class="tdNo">12</td>
            <td class="tdTitle"><a href="#">문의입니다.</a> </td>
            <td class="tdDate"> 2012.03.15</td>
            <td class="tdName">홍길동</td>
            <td class="tdCount">22</td>
         </tr>
     </tbody>
     
     <!--버텀부-->
     <tfoot>
        <tr>
            <td colspan="5" class="tdFoot"> ◀&nbsp;&nbsp;
            <a href="#"> <b>1</b></a>&nbsp;&nbsp;
            <a href="#"> 2</a>&nbsp;&nbsp;
            <a href="#"> 3</a>&nbsp;&nbsp;
            <a href="#"> 4</a>&nbsp;&nbsp;
            <a href="#"> 5</a>&nbsp;&nbsp;
            &nbsp;&nbsp;▶&nbsp;&nbsp;&nbsp;
        </tr>
		
     </tfoot>

	 </table>


	 <!-- 검색 폼 영역 -->
       <div id="search">
       <form name="searchForm" action="" method="get">
       <p>
           <select name="searchType">
               <option value="ALL">전체검색</option>
               <option value="SUBJECT">제목</option>
               <option value="WRITER">작성자</option>
               <option value="CONTENTS">내용</option>
           </select>

           <input type="text" name="searchText" value="" />
           <input type="submit" id="insubmit" value="검색" />
       </p>
       </form>
	   </div>

	 <!--버튼영역-->
	 <div id="writebt">
    <input type="button" id="inbt" value="글쓰기" 
	onclick="location.href='oneByOneBbsWrite.do'" />
    </div>
</div>

	