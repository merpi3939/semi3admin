<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <h3>상품 목록</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12  ">
              
	            <!-- 검색 시작 -->
	            <div class="x_panel">
	            	<div class="x_title">
	                    <h2>상품 검색창</small></h2>
	                   
	                    <div class="clearfix"></div>
                  	</div>
                  	
                  	<div class="x_content">
                  	<table class="myTable">
                  		<tr>
                  			<td>검색분류</td>
                  			<td >
                  				<select class="Myinline form-control" >
                  					<option>상품명</option>
                  					<option>상품번호</option>
                  				</select>
                  			</td>
                  			<td colspan="3" >
                  				<input type="text" class="form-control" >
                			</td>

                  		</tr>
                  		<tr>
                  			<td>상품분류</td>
                  			<td colspan="4">
                  				<select class="Myinline form-control">
                  					<option>Outer</option>
                  					<option>Top</option>
                  					<option>Bottom</option>
                  					<option>Dress</option>
                  					<option>Africa Collections</option>
                  					<option>Accessories</option>
                  					<option>Artworks</option>
                  					<option>Upcycling</option>
                  				</select> 
                  			</td>
                  		</tr>
                  		<tr>
                  			<td>상품등록일</td>
                  			<td  style="display: inline-block;">
                  				<button class="Myinline btn btn-info">오늘</button>
                  				<button class="Myinline btn btn-info">7일</button>
                  				<button class="Myinline btn btn-info">1개월</button>
                  				<button class="Myinline btn btn-info">1년</button>
                  				<button class="Myinline btn btn-info">전체</button>
                  			</td>
                  			
                  			<td>	
                 				<div class="form-group calInline" >
			                        <div class='input-group date' id='myDatepicker1'>
			                            <input type='text' class="form-control"  />
			                            <span class="input-group-addon">
			                               <span class="glyphicon glyphicon-calendar"></span>
			                            </span>
			                        </div>
			                    </div>
				            </td>
				            
				            <td>
			                    <p class="Myinline">~</p>
				            </td>
				            
				            <td>
	                			<div class="form-group calInline" >
			                        <div class='input-group date' id='myDatepicker2'>
			                            <input type='text' class="form-control" />
			                            <span class="input-group-addon">
			                               <span class="glyphicon glyphicon-calendar"></span>
			                            </span>
			                        </div>
			                    </div>
                  			</td>
                  				
                  			</td>
                  		</tr>
                  		<!-- 
                  		<tr>
                  			<td>진열상태</td>
                  			<td>
                  				<input type="radio"  class="flat radio" name="iCheck">전체
                  				<input type="radio" class="flat radio" name="iCheck">진열함
                  				<input type="radio" class="flat radio" name="iCheck">진열안함
                  			</td>
                  			<td>판매상태</td>
                  			<td>
                  				<input type="radio"  class="flat radio" name="iCheck1">전체
                  				<input type="radio" class="flat radio" name="iCheck1">진열함
                  				<input type="radio" class="flat radio" name="iCheck1">진열안함
                  			</td>
                  		</tr>
                  		 -->
                  		
                  	</table>
                  	<div style="margin: 0 auto;">
                  		<button class="myBtn btn btn-success">검색</button>
                  		<button class="myBtn btn btn-secondary">초기화</button>
                  	</div>
                  	</div>
                  	
	            </div>
	            <!-- 검색 끝 -->
	            
	            
	            <div class="clearfix"></div>
	            
              	<div class="x_panel">
                  <div class="x_title">
                    <h2>상품 목록</h2>
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
					
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive bulk_action nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>
							 <input type="checkbox" name="check-all" id="check-all" >
						  </th>
                          <th>First name</th>
                          <th>Last name</th>
                          <th>Position</th>
                          <th>Office</th>
                          <th>Age</th>
                          <th>Start date</th>
                          <th>Salary</th>
                          <th>Extn.</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Tiger</td>
                          <td>Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>$320,800</td>
                          <td>5421</td>
                        </tr>
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
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Ashton</td>
                          <td>Cox</td>
                          <td>Junior Technical Author</td>
                          <td>San Francisco</td>
                          <td>66</td>
                          <td>2009/01/12</td>
                          <td>$86,000</td>
                          <td>1562</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Cedric</td>
                          <td>Kelly</td>
                          <td>Senior Javascript Developer</td>
                          <td>Edinburgh</td>
                          <td>22</td>
                          <td>2012/03/29</td>
                          <td>$433,060</td>
                          <td>6224</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Airi</td>
                          <td>Satou</td>
                          <td>Accountant</td>
                          <td>Tokyo</td>
                          <td>33</td>
                          <td>2008/11/28</td>
                          <td>$162,700</td>
                          <td>5407</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Brielle</td>
                          <td>Williamson</td>
                          <td>Integration Specialist</td>
                          <td>New York</td>
                          <td>61</td>
                          <td>2012/12/02</td>
                          <td>$372,000</td>
                          <td>4804</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Herrod</td>
                          <td>Chandler</td>
                          <td>Sales Assistant</td>
                          <td>San Francisco</td>
                          <td>59</td>
                          <td>2012/08/06</td>
                          <td>$137,500</td>
                          <td>9608</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Rhona</td>
                          <td>Davidson</td>
                          <td>Integration Specialist</td>
                          <td>Tokyo</td>
                          <td>55</td>
                          <td>2010/10/14</td>
                          <td>$327,900</td>
                          <td>6200</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Colleen</td>
                          <td>Hurst</td>
                          <td>Javascript Developer</td>
                          <td>San Francisco</td>
                          <td>39</td>
                          <td>2009/09/15</td>
                          <td>$205,500</td>
                          <td>2360</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Sonya</td>
                          <td>Frost</td>
                          <td>Software Engineer</td>
                          <td>Edinburgh</td>
                          <td>23</td>
                          <td>2008/12/13</td>
                          <td>$103,600</td>
                          <td>1667</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Jena</td>
                          <td>Gaines</td>
                          <td>Office Manager</td>
                          <td>London</td>
                          <td>30</td>
                          <td>2008/12/19</td>
                          <td>$90,560</td>
                          <td>3814</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Quinn</td>
                          <td>Flynn</td>
                          <td>Support Lead</td>
                          <td>Edinburgh</td>
                          <td>22</td>
                          <td>2013/03/03</td>
                          <td>$342,000</td>
                          <td>9497</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Charde</td>
                          <td>Marshall</td>
                          <td>Regional Director</td>
                          <td>San Francisco</td>
                          <td>36</td>
                          <td>2008/10/16</td>
                          <td>$470,600</td>
                          <td>6741</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Haley</td>
                          <td>Kennedy</td>
                          <td>Senior Marketing Designer</td>
                          <td>London</td>
                          <td>43</td>
                          <td>2012/12/18</td>
                          <td>$313,500</td>
                          <td>3597</td>
                        </tr>
                        <tr>
                          <td>
							 <input type="checkbox" name="check" >
						  </td>
                          <td>Tatyana</td>
                          <td>Fitzpatrick</td>
                          <td>Regional Director</td>
                          <td>London</td>
                          <td>19</td>
                          <td>2010/03/17</td>
                          <td>$385,750</td>
                          <td>1965</td>
                        </tr>
                       
                      </tbody>
                    </table>
					
					
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
    
    </script>
    
    
  </body>
</html>




