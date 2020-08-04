<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

%>    
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="jspInclude/headFile.jsp"></jsp:include>

    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

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
          <h5>오늘 매출 현황</h5>
          <!-- top tiles -->          
          <!-- 상단 결제/환불/배송 칸. 여백 , 크기 수정 필요 -->
          <div class="col-md-12 col-sm-12">
          <div class="row col-lg-7 col-md-12 col-sm-12" style="display: inline-block;" >
          <div class="tile_count" > 
            <div class="col-md-4 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-shopping-cart"></i> 주문</span>
              <div class="count">2500</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>4% </i>From Yesterday</span>
            </div>
            <div class="col-md-4 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-krw"></i> 결제</span>
              <div class="count">123.50</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i>From Yesterday</span>
            </div>
            <div class="col-md-4 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-rotate-left"></i> 환불</span>
              <div class="count green">2,500</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i>From Yesterday</span>
            </div>

          </div>
        </div>
        </div>
          <!-- /top tiles -->

          <div class="row">
            <div class="col-md-12 col-sm-12 ">
              <div class="dashboard_graph">

                <div class="row x_title">
                  <div class="col-md-6">
                    <h3>분기별 매출 그래프 <small>Graph title sub-title</small></h3>
                  </div>
                  <div class="col-md-6">
                    <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                      <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                      <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                    </div>
                  </div>
                </div>

                <div class="col-md-9 col-sm-9 ">
                  <div id="chart_plot_01" class="demo-placeholder"></div>
                </div>
                <div class="col-md-3 col-sm-3  bg-white">
                  <div class="x_title">
                    <h2>카테고리별 판매량</h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="col-md-12 col-sm-12 ">
                    <div>
                      <p>OUTER</p>
                      <div class="">
                        <div class="progress progress_sm" style="width: 76%;">
                          <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="80"></div>
                        </div>
                      </div>
                    </div>
                    <div>
                      <p>TOP</p>
                      <div class="">
                        <div class="progress progress_sm" style="width: 76%;">
                          <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="60"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12 col-sm-12 ">
                    <div>
                      <p>BOTTOM</p>
                      <div class="">
                        <div class="progress progress_sm" style="width: 76%;">
                          <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="40"></div>
                        </div>
                      </div>
                    </div>
                    <div>
                      <p>DRESS</p>
                      <div class="">
                        <div class="progress progress_sm" style="width: 76%;">
                          <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="50"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="clearfix"></div>
              </div>
            </div>

          </div>
          <br />


		  <!-- 쇼핑몰현황 & 도넛차트 -->
		  <div class="row">
		  
		  <!-- 주문현황&취소/교환/반품/환불 현황 박스모델 -->
		  <div class="row col-lg-6 col-md-12 col-sm-12">
          <div class="col-md-12 col-sm-12 ">
          <h5> 주문현황 (최근 1개월 기준)</h5>
          </div>
          <div class="row col-md-12 col-sm-12">
          <div class="row" style="display: inline-block;">
            <div class="top_tiles">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 ">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-thumb-tack"></i></div>
                  <div class="count">179</div>
                  <h3>결제완료</h3>
                  <p>Lorem ipsum psdea itgum rixt.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 ">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-cubes"></i></div>
                  <div class="count">213</div>
                  <h3>상품준비</h3>
                  <p>Lorem ipsum psdea itgum rixt.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 ">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-cubes"></i></div>
                  <div class="count">336</div>
                  <h3>배송중</h3>
                  <p>Lorem ipsum psdea itgum rixt.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 ">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-check-square-o"></i></div>
                  <div class="count">274</div>
                  <h3>배송완료</h3>
                  <p>Lorem ipsum psdea itgum rixt.</p>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
          </div>
          
          <!-- 취소/교환/반품/환불 -->
          <div class="col-md-12 col-sm-12 ">
          <h5> 취소 / 교환 / 반품 / 환불현황 (최근 1개월 기준)</h5>
          </div>
          <div class="row">
          <div class="col-md-12 col-sm-12 ">
          <div class="row" style="display: inline-block;">
            <div class="top_tiles">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 " >
                <div class="tile-stats" style="width:100%;">
                  <div class="icon"><i class="fa fa-times"></i></div>
                  <div class="count">2</div>
                  <h3>취소</h3>
                  <p>Lorem ipsum psdea itgum rixt.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 " >
                <div class="tile-stats" style="width:100%;">
                  <div class="icon"><i class="fa fa-exchange"></i></div>
                  <div class="count">13</div>
                  <h3>교환</h3>
                  <p>Lorem ipsum psdea itgum rixt.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 " >
                <div class="tile-stats" style="width:100%;">
                  <div class="icon"><i class="fa fa-reply"></i></div>
                  <div class="count">22</div>
                  <h3>반품</h3>
                  <p>Lorem ipsum psdea itgum rixt.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 " >
                <div class="tile-stats" style="width:100%;">
                  <div class="icon" ><i class="fa fa-database"></i></div>
                  <div class="count" >7</div>
                  <h3>환불</h3>
                  <p>Lorem ipsum psdea itgum rixt.</p>
                </div>
              </div>
            </div>
          </div>
          </div>
          </div>
          <!-- 취소/교환/반품/환불 끝 -->
          
          </div>
          <!-- 주문현황&취소/교환/반품/환불 현황 박스모델 끝 -->
          

		  
          
          <!-- 도넛차트 -->
          <div class="col-lg-6 col-md-12 col-sm-12 ">
          <div class="x_panel tile fixed_height_320 overflow_hidden">
            <div class="x_title">
              <h2>상품별 매출현황</h2>
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
              <table class="" style="width:100%">
                <tr>
                  <th style="width:37%;">
                    <p>Top 5</p>
                  </th>
                  <th>
                    <div class="col-lg-7 col-md-7 col-sm-7 ">
                      <p class="">Product</p>
                    </div>
                    <div class="col-lg-5 col-md-5 col-sm-5 ">
                      <p class="">Progress</p>
                    </div>
                  </th>
                </tr>
                <tr>
                  <td>
                    <canvas class="canvasDoughnut" height="140" width="140" style="margin: 15px 10px 10px 0"></canvas>
                  </td>
                  <td>
                    <table class="tile_info">
                      <tr>
                        <td>
                          <p><i class="fa fa-square blue"></i>검정 짧은 철릭 </p>
                        </td>
                        <td>30%</td>
                      </tr>
                      <tr>
                        <td>
                          <p><i class="fa fa-square green"></i>봉황문 분홍 저고리 </p>
                        </td>
                        <td>10%</td>
                      </tr>
                      <tr>
                        <td>
                          <p><i class="fa fa-square purple"></i>홑겹 화문 치마 </p>
                        </td>
                        <td>20%</td>
                      </tr>
                      <tr>
                        <td>
                          <p><i class="fa fa-square aero"></i>봉황단 치마 </p>
                        </td>
                        <td>15%</td>
                      </tr>
                      <tr>
                        <td>
                          <p><i class="fa fa-square red"></i>봉황문 크롭탑 </p>
                        </td>
                        <td>30%</td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
          </div>
        </div>
        <!-- 도넛차트 끝 -->
        </div>
        
            
        
        <!-- 쇼핑몰현황 & 도넛차트 끝 -->
     
        </div>

        </div>
        <!-- /page content -->

        <!-- footer -->
        <jsp:include page="jspInclude/footer.jsp"></jsp:include>
        
      </div>
    </div>

	<%-- java script 리스트 --%>
	<jsp:include page="jspInclude/defaultJscript.jsp"></jsp:include>
	
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

   
  </body>
</html>