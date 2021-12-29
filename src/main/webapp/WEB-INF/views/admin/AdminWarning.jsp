<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                    <h1 class="h3 mb-2 text-gray-800">신고 회원 관리</h1>
                    <p class="mb-4">신고된 회원들을 한번에 관리합니다.</p>

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
                                            <th>E-mail</th>
                                            <th>Name</th>
                                            <th>NickName</th>
                                            <th>Birthdate</th>
                                            <th>Gender</th>
                                            <th>Tel</th>
                                            <th>UserType</th>
                                            <th>Preference</th>
                                            <th>Registdate</th>
                                            <th>신고수</th>
                                            <th>정지</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>KIM@naver.com</td>
                                            <td>KIM</td>
                                            <td>킴캡짱</td>
                                            <td>1992-09-01</td>
                                            <td>남자</td>
                                            <td>010-1111-1111</td>
                                            <td>Direct</td>
                                            <td>넷플릭스,밀리의 서재</td>
                                            <td>2021-12-02</td>
                                            <td>3</td>
                                            <td><a href="<c:url value='/stopMember.do'/>" class="btn btn-success btn-circle btn-sm"><i class="fas fa-check"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>KIM@naver.com</td>
                                            <td>KIM</td>
                                            <td>킴캡짱</td>
                                            <td>1992-09-01</td>
                                            <td>남자</td>
                                            <td>010-1111-1111</td>
                                            <td>Direct</td>
                                            <td>넷플릭스,밀리의 서재</td>
                                            <td>2021-12-02</td>
                                            <td>3</td>
                                            <td><a href="<c:url value='/stopMember.do'/>" class="btn btn-success btn-circle btn-sm"><i class="fas fa-check"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            <div id="dataTable_wapper" class="dataTables_wapper dt-bootstrap4">
                                	<div class="row">
                                		<div class="col-sm-12 col-md-5">
                                			<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">
                                				Showing 1 to 10 of all entries
                                			</div>
                                		
                                		</div>
                                		<div class="col-sm-12 col-md-7">
                                			<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
                                				<ul class="pagination">
                                					<li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                					<li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                					<li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                				</ul>
                                			</div>
                                		</div>
                                	</div>
                                </div><!-- 페이지네이션 끝 -->
                            
                            
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
            
            
            
            <!-- Main Content -->
            <div id="content">


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">신고 게시물 관리</h1>
                    <p class="mb-4">신고된 게시물들을 한번에 관리합니다.</p>

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
                                            <th>Name</th>
                                            <th>NickName</th>
                                            <th>Title</th>
                                            <th>Where</th>
                                            <th>신고수</th>
                                            <th>수정</th>
                                            <th>삭제</th>
                                            <th>바로가기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>으르렁</td>
                                            <td>넷플릭스 나눠볼사람 구해요</td>
                                            <td>파티원게시판</td>
                                            <td>25</td>
                                            <td><a href="#" class="btn btn-warning btn-circle btn-sm"><i class="fas fa-exclamation-triangle"></i></a></td>
                                            <td><a href="#" class="btn btn-danger btn-circle btn-sm"><i class="fas fa-trash"></i></a></td>
                                            <td><a href="#" class="btn btn-info btn-circle btn-sm"><i class="fas fa-info-circle"></i> </a></td>
                                        </tr>
                                        <tr>
                                            <td>Tiger Nixon2</td>
                                            <td>으르렁2</td>
                                            <td>넷플릭스 나눠볼사람 구해요~~~~~~~~</td>
                                            <td>파티원게시판</td>
                                            <td>25</td>
                                            <td><a href="#" class="btn btn-warning btn-circle btn-sm"><i class="fas fa-exclamation-triangle"></i></a></td>
                                            <td><a href="#" class="btn btn-danger btn-circle btn-sm"><i class="fas fa-trash"></i></a></td>
                                            <td><a href="#" class="btn btn-info btn-circle btn-sm"><i class="fas fa-info-circle"></i> </a></td>
                                        </tr>
                                    </tbody>
                                </table>
                             </div>
                             
                                <div id="dataTable_wapper" class="dataTables_wapper dt-bootstrap4">
                                	<div class="row">
                                		<div class="col-sm-12 col-md-5">
                                			<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">
                                				Showing 1 to 10 of all entries
                                			</div>
                                		
                                		</div>
                                		<div class="col-sm-12 col-md-7">
                                			<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
                                				<ul class="pagination">
                                					<li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                					<li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                					<li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                				</ul>
                                			</div>
                                		</div>
                                	</div>
                                </div><!-- 페이지네이션 끝 -->
                                
                           
                        </div><!-- card-body -->
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