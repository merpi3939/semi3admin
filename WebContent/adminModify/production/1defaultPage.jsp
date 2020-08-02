<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="jspInclude/headFile.jsp"></jsp:include>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
      
      	<%-- 왼쪽 사이드 바 메뉴 --%>
      	<jsp:include page="jspInclude/sidebarMenu.jsp"></jsp:include>
      	
      	<%-- 위쪽 쇼핑몰 바로가기 & 로그인 사용자 --%>
        <jsp:include page="jspInclude/top_nav.jsp"></jsp:include>
        

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
          
            <div class="page-title">
              <div class="title_left">
                <h3>타이틀</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12  ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>패널 타이틀</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      내용물은 여기에 써주세요 ...
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
    
  </body>
</html>
