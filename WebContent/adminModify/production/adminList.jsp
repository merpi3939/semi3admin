<%@page import="site.itwill.admindao.MemberadminDAO"%>
<%@page import="site.itwill.admindto.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//member 테이블에 저장된 모든 일반회원정보를 검색하여 반환하는 DAO 클래스의 메소드 호출
	List<MemberDTO> memberList=MemberadminDAO.getDAO().selectAdminMember();
	
	String message=(String)session.getAttribute("message");
	if(message==null){
		message="";
	} else{
		session.removeAttribute("message");
	}
	
%>
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="jspInclude/headFile.jsp"></jsp:include>
    <link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <!-- Datatables -->
    
    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
      
      	<%-- 왼쪽 사이드 바 메뉴 --%>
      	<jsp:include page="jspInclude/sidebarMenu.jsp"></jsp:include>
      	
      	<%-- 위쪽 nav : 쇼핑몰 바로가기 & 로그인 사용자 --%>
        <jsp:include page="jspInclude/top_nav.jsp"></jsp:include>
        

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
          
            <div class="page-title">
              <div class="title_left">
                <h3>관리자 목록</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12  ">

              	<div class="x_panel">
                  <div class="x_title">
                    <h2>관리자 목록</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                          </div>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    <p class="text-muted font-13 m-b-30">
                      Responsive is an extension for DataTables that resolves that problem by optimising the table's layout for different screen sizes through the dynamic insertion and removal of columns from the table.
                    </p>
                  <%-- form 태그 시작 --%>
                  <form action="" method="post" name="updateForm" id="updateForm">
                    <button class="btn btn-primary" id="update" name="update">수정</button>
                    <button class="btn btn-danger" id="delete" name="delete">삭제</button>
					
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>
							 <input type="checkbox" name="check-all" id="check-all" >
						  </th>
                          <th>회원번호</th>
                          <th>회원이름</th>
                          <th>아이디</th>
                          <th>전화번호</th>
                          <th>주소</th>
                          <th>우편번호</th>
                          <th>이메일</th>
                          <th>생일</th>
                          <th>회원가입일</th>
                        </tr>
                      </thead>
                      
                      <tbody>
                      	<% if(memberList.isEmpty()||memberList==null) { %>
                      	<tr>
                          <td colspan="10">
							 <p>관리자 목록이 없습니다.</p>
						  </td>
                        </tr>
                      	<% } else {  %>
							<% for(MemberDTO member : memberList) { %>
							   <tr>
		                          <td>
									 <input type="checkbox" name="check" >
								  </td>
		                          <td><%=member.getUser_no() %></td>
		                          <td><%=member.getUser_name() %></td>
		                          <td><%=member.getUser_id() %></td>
		                          <td><%=member.getUser_phone() %></td>
		                          <td><%=member.getUser_addr() %></td>
		                          <td><%=member.getUser_zip() %></td>
		                          <td><%=member.getUser_email() %></td>
		                          <td><%=member.getUser_birth() %></td>
		                          <td><%=member.getUser_joindate() %></td>
		                        </tr>
							<% } %>
						<% } %>


                        <%--
                        
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Garrett</td>
                          <td>Winters</td>
                          <td>Accountant</td>
                          <td>Tokyo</td>
                          <td>63</td>
                          <td>2011/07/25</td>
                          <td>$170,750</td>
                          <td>8422</td>
                          <td>g.winters@datatables.net</td>
                        </tr>
                         --%>

                      </tbody>
                    </table>
					</form>
		            <%-- form 태그 끝 --%>
					
                  </div>
                </div>
              </div>
            
            </div>
                </div>
              
              </div>
            </div>
            
          </div>
        </div>
        <!-- /page content -->

        <!-- footer -->
        <jsp:include page="jspInclude/footer.jsp"></jsp:include>
        
      </div>
    </div>

	<%-- java script 리스트 --%>
	<jsp:include page="jspInclude/defaultJscript.jsp"></jsp:include>
	<!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    
    <!-- Datatables -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
    
    <script type="text/javascript">
    
    <%-- checkbox 전체 선택 --%>
	$(function(){
	    $("#check-all").click(function(){
	        var chk = $(this).is(":checked");//.attr('checked');
	        if(chk) $("table input").prop('checked', true);
	        else  $("table input").prop('checked', false);
    	});
	});

	<%-- update 버튼 클릭 --%>
	$("#update").click(function(){
		//수정 페이지 이동
		
	});
	
	<%-- delete 버튼 클릭 --%>
	$("#delete").click(function(){
		//삭제 명령
	});
    </script>
    
  </body>
</html>
