<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="container">
	
	<div class="page-header">
		<h1>스프링 <small>PartyMain.jsp</small></h1>
	</div>
	<div class="row">
		<ul class="nav nav-pills nav-stacked col-sm-3">
		  <li><a href="#">Home</a></li>
		  <li><a href="#">Profile</a></li>
		  <li><a href="#">Messages</a></li>
		</ul>
		<div class="col-sm-9">
			<form>
	
				<div class="form-group">
					<h4>대화내용</h4>
					<div id="chatArea">
						<div id="chatMessage"
							style="height: 300px; border: 1px gray solid; overflow: auto"></div>
					</div>
				</div>
	
				<div class="form-group">
					<label for="message" class="col-sm-1">메시지</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" id="message" />
					</div>
				</div>
				<input class="btn btn-success" type="button" id="sendBtn" value="전송">
			</form>
		</div>
	</div>
	
</div>
