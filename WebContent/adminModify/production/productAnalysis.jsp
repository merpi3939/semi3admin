<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="jspInclude/headFile.jsp"></jsp:include>
    <style type="text/css">
    .margin-r{
    	margin-right: 10px;
    }
    </style>
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
                <h3>타이틀</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12  ">
              
                <div class="x_panel col-lg-5 col-md-5 col-sm-12 margin-r" >
                  <div class="x_title">
                    <h2>여성 인기 상품 <small>Top 5</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <div id="echart_donut" style="height:350px;"></div>
                  </div>
                </div>

                
                <div class="x_panel col-lg-5 col-md-5 col-sm-12 margin-r" >
                  <div class="x_title">
                    <h2>남성 인기 상품 <small>Top 5</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <div id="echart_donut" style="height:350px;"></div>
                  </div>
                </div>
                
                <div class="clearfix"></div>
                
                <div class="x_panel col-lg-5 col-md-5 col-sm-12 margin-r">
                  <div class="x_title">
                    <h2>여성 인기 상품</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      내용물은 여기에 써주세요 ...
                  </div>
                </div>
 
                
                <div class="x_panel col-lg-5 col-md-5 col-sm-12 margin-r">
                  <div class="x_title">
                    <h2>남성 인기 상품</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      내용물은 여기에 써주세요 ...
                  </div>
                </div>
                
                <div class="clearfix"></div>
                
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
    
    <!-- ECharts -->
    <script src="../vendors/echarts/dist/echarts.min.js"></script>
    <script src="../vendors/echarts/map/js/world.js"></script>
    
  </body>
</html>
