<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 회원 관리 페이지 -->

<%@ include file="/WEB-INF/views/template/AdminTop.jsp"%>
<style>
.pagination {
	margin-left: 350px;
}
</style>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">채팅 Overview</h1>
					<p class="mb-4">전체 채팅을 관리할 수 있습니다.</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">DataTables</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Chat No</th>
											<th>Party No</th>
											<th>Title</th>
											<th>Conversation Id-1</th>
											<th>Conversation Id-2</th>
											<th>Join</th>											
										</tr>
									</thead>
									<tbody>
										<!-- 중간발표용 데이터 수동입력 - 나중에 삭제해 주세요 -->
										<!--  
													<td>12</td>
													<td>57</td>
													<td>디즈니 함께봐요</td>
													<td>kim@naver.com</td>
													<td>park@google.com</td>
													<td>33</td>
													<td>24</td>
										-->			
										<c:if test="${! empty listPagingData.lists}" var="isEmpty">
											<c:forEach items="${listPagingData.lists}" var="dto">
												<tr>
													<td>${dto.chatno}</td>
													<td>${dto.partyno}</td>
													<td>${dto.partytitle}</td>
													<td>${dto.participant}</td>
													<td>${dto.bbswriter}</td>
													<td>${dto.member eq '1' ? 'Y' : 'N'}</td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${! isEmpty}">
											<tr>
												<td colspan="9">멤버를 불러오는데 실패했습니다</td>
											</tr>
										</c:if>
									</tbody>
								</table>
							</div>

							<c:if test="${listPagingData.lists.size() !=0 }">
								${listPagingData.pagingString}
							</c:if>
							<!-- 페이지네이션 끝 -->

						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->


	<%@ include file="/WEB-INF/views/template/AdminFooter.jsp"%>