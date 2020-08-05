<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-md-3 left_col">
  <div class="left_col scroll-view">
    <div class="navbar nav_title" style="border: 0;">
      <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i><span> 관리자페이지 </span></a>
    </div>

    <div class="clearfix"></div>

    <!-- menu profile quick info -->
    <div class="profile clearfix">
      <div class="profile_pic">
        <img src="images/img.jpg" alt="..." class="img-circle profile_img">
      </div>
      <div class="profile_info">
        <span>환영합니다!</span>
        <h2>관리자명님</h2>
      </div>
    </div>
    <!-- /menu profile quick info -->

    <br />

    <!-- sidebar menu -->
    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
      <div class="menu_section">
        <h3></h3>
        <ul class="nav side-menu">
          <li><a href="index.jsp"><i class="fa fa-home"></i> 홈 <span ></span></a>
          </li>
          <li><a><i class="fa fa-edit"></i> 상품관리 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="productRegister.jsp">상품등록</a></li>
              <li><a href="productList.jsp">상품목록</a></li>
              <li><a href="productUpdate.jsp">상품수정</a></li>
            </ul>
          </li>
          <li><a><i class="fa fa-desktop"></i> 주문관리 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="orderList.jsp">전체주문목록</a></li>
              <li><a href="delivery.jsp">배송관리</a></li>
              <li><a href="CRTList.jsp">취소/교환/반품/환불</a></li>
            </ul>
          <li><a><i class="fa fa-table"></i> 고객관리 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="memberList.jsp">고객목록</a></li>
              <li><a href="memberUpdate.jsp">고객수정</a></li>
            </ul>
          </li>
          <li><a><i class="fa fa-table"></i> 관리자관리 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="adminAdd.jsp">관리자등록</a></li>
              <li><a href="adminList.jsp">관리자목록</a></li>
              <li><a href="adminUpdate.jsp">관리자수정</a></li>
            </ul>
          </li>

          <li><a><i class="fa fa-clone"></i> 게시판관리 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="fixed_sidebar.html">게시판 설정</a></li>
              <li><a href="fixed_footer.html">게시물 관리</a></li>
            </ul>
          </li>
          <li><a><i class="fa fa-bar-chart-o"></i> 통계분석 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="salesAnalysis.jsp">매출 분석</a></li>
              <li><a href="productAnalysis.jsp">상품 분석</a></li>
              <li><a href="morisjs.html">Moris JS</a></li>
              <li><a href="echarts.html">ECharts</a></li>
              <li><a href="other_charts.html">Other Charts</a></li>
            </ul>
          </li>
          <li><a><i class="fa fa-bar-chart-o"></i> 입출고관리 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="chartjs.html">품목 관리</a></li>
              <li><a href="chartjs2.html">입고 관리</a></li>
              <li><a href="morisjs.html">출고 관리</a></li>
              <li><a href="echarts.html">재고 관리</a></li>
              <li><a href="other_charts.html">반품 관리</a></li>
            </ul>
          </li>
        </ul>
      </div>
      

    </div>
    <!-- /sidebar menu -->

    <!-- /menu footer buttons -->
    <div class="sidebar-footer hidden-small">
    
   	<%--
      <a data-toggle="tooltip" data-placement="top" title="Settings">
        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
      </a>
      <a data-toggle="tooltip" data-placement="top" title="FullScreen">
        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
      </a>
      <a data-toggle="tooltip" data-placement="top" title="Lock">
        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
      </a>
    --%>
    
      <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
      </a>
    </div>
    <!-- /menu footer buttons -->
  </div>
</div>