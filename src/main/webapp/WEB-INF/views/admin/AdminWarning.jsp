<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 파티원 게시판 관리 페이지 -->
<style>
	.pagination{
		margin-left:350px;
	}

</style>
<%@ include file="/WEB-INF/views/template/AdminTop.jsp"%>

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
                    <h1 class="h3 mb-2 text-gray-800">신고 관리</h1>
                    <p class="mb-4">신고된 문의들을 한번에 관리합니다.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>No</th>
                                            <th>신고자</th>
                                            <th>카테고리</th>
                                            <th>게시물no</th>
                                            <th>신고사유</th>
                                            <th>신고내용</th>
                                            <th>신고날짜</th>
                                            <th>바로가기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test="${empty listPagingData.lists }" var="isEmpty">
											<tr>
												<td colspan="12">등록된 게시물이 없어요</td>
											</tr>
										</c:if>
										<c:if test="${not isEmpty }">
	                                    	<c:forEach var="item" items="${listPagingData.lists}" varStatus="loop">
	                                        <tr>
	                                            <td>${listPagingData.totalRecordCount - (((listPagingData.nowPage - 1) * listPagingData.pageSize) + loop.index)}</td>
	                                            <td>${item.email }</td>
	                                            <td>${item.reportbbs }</td>
	                                            <td>${item.inqno }${item.partyNo }${item.ussrno}${item.chatno}</td>
	                                            <td>${item.reporttype }</td>
	                                            <td>${item.reportcontent}</td>
	                                            <td>${item.reportregistdate}</td>
	                                            <td><a href="<c:url value='/findReport.do?reportbbs=${item.reportbbs }&inqno=${item.inqno }&partyNo=${item.partyNo }&ussrno=${item.chatno }&chatno=${item.chatno }&email=${item.email }'/>" class="btn btn-info btn-circle btn-sm">
	                                            	<i class="fas fa-info-circle"></i> 
	                                            	</a>
	                                            </td>
	                                        </tr>
	                                        </c:forEach>
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