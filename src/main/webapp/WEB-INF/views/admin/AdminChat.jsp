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
											<th>파티모집 번호</th>
											<th>채팅방 번호</th>											
											<th>파티모집 제목</th>
											<th>파티참가 신청자</th>
											<th>파티모집 작성자</th>
											<th>참여</th>	
											<th>파티모집 인원</th>
											<th>파티모집 마감</th>
										</tr>
									</thead>
									<tbody>		
										<c:if test="${! empty listPagingData.lists}" var="isEmpty">
											<c:forEach items="${listPagingData.lists}" var="dto">
												<tr>
													<td>${dto.partyno}</td>
													<td>${dto.chatno}</td>													
													<td>${dto.partytitle}</td>
													<td>${dto.participant}</td>
													<td>${dto.bbswriter}</td>
													<td>${dto.confirm eq '1' ? 'Y' : 'N'}</td>
													<td>${dto.maxcapacity}</td>
													<td>${dto.match eq '1' ? 'Y' : 'N'}</td>
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