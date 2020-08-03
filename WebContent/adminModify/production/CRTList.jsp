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
      	
      	<%-- 위쪽 nav : 쇼핑몰 바로가기 & 로그인 사용자 --%>
        <jsp:include page="jspInclude/top_nav.jsp"></jsp:include>
        

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
          
            <div class="page-title">
              <div class="title_left">
                <h3>취소/교환/환불/반품 목록</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-20 col-sm-20  ">
              
              	<!-- 검색창 -->
                <div class="x_panel">
                  <div class="x_title">
                    <h2>검색창</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  	<table class="myTable">
          
                  		<tr>
                  			<td>거래일</td>
                  	
                  			
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
                  		
                  	</table>
                  	<div style="margin: 0 auto;">
                  		<button class="myBtn btn btn-success">검색</button>
                  		<button class="myBtn btn btn-secondary">초기화</button>
                  	</div>
                  	</div>
                  	
                </div>
                <!-- 검색창 끝 -->
                
                <!-- 배송 현황 시작 -->
               	<div class="row">
	              <div class="col-md-12 col-sm-12  ">
	                <div class="x_panel">
	                  <div class="x_title">
	                    <h2></h2>
	                    <!-- <div class="clearfix"></div> -->
	                  </div>
	                  <div class="x_content">
	                  <div class="top_tiles">
			              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 ">
			                <div class="tile-stats">
			                  <div class="icon"><i class="fa fa-times"></i></div>
			                  <div class="count">179</div>
			                  <h3>취소</h3>
			                  <p>Lorem ipsum psdea itgum rixt.</p>
			                </div>
			              </div>
			              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 ">
			                <div class="tile-stats">
			                  <div class="icon"><i class="fa fa-exchange"></i></div>
			                  <div class="count">213</div>
			                  <h3>교환</h3>
			                  <p>Lorem ipsum psdea itgum rixt.</p>
			                </div>
			              </div>
			              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 ">
			                <div class="tile-stats">
			                  <div class="icon"><i class="fa fa-reply"></i></div>
			                  <div class="count">336</div>
			                  <h3>환불</h3>
			                  <p>Lorem ipsum psdea itgum rixt.</p>
			                </div>
			              </div>
			              <div class="animated flipInY col-lg-3 col-md-3 col-sm-5 ">
			                <div class="tile-stats">
			                  <div class="icon"><i class="fa fa-database"></i></div>
			                  <div class="count">274</div>
			                  <h3>반품</h3>
			                  <p>Lorem ipsum psdea itgum rixt.</p>
			                </div> 
			               </div>             
			            
			            <div class="clearfix"></div>
			          </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <!-- 배송현황 끝 -->
	            
	            <!-- 배송 검색 결과 시작 -->
	            <div class="row">
	              <div class="col-md-12 col-sm-12  ">
	                <div class="x_panel">
	                  <div class="x_title">
	                    <h2>취소/교환/환불/반품 검색 결과</h2>
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    <p class="text-muted font-13 m-b-30">
                      DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction function: <code>$().DataTable();</code>
                    </p>
                    <table id="datatable-checkbox" class="table table-striped table-bordered bulk_action" style="width:100%">
                      <thead>
                        <tr>
                          <th>
							 <th><input type="checkbox" id="check-all" ></th>
						  </th>
                          <th>Name</th>
                          <th>Position</th>
                          <th>Office</th>
                          <th>Age</th>
                          <th>Start date</th>
                          <th>Salary</th>
                        </tr>
                      </thead>


                      <tbody>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>$320,800</td>
                        </tr>
                        <tr>
                         <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Garrett Winters</td>
                          <td>Accountant</td>
                          <td>Tokyo</td>
                          <td>63</td>
                          <td>2011/07/25</td>
                          <td>$170,750</td>
                        </tr>
                        <tr>
							<td>
								 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Ashton Cox</td>
                          <td>Junior Technical Author</td>
                          <td>San Francisco</td>
                          <td>66</td>
                          <td>2009/01/12</td>
                          <td>$86,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Cedric Kelly</td>
                          <td>Senior Javascript Developer</td>
                          <td>Edinburgh</td>
                          <td>22</td>
                          <td>2012/03/29</td>
                          <td>$433,060</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Airi Satou</td>
                          <td>Accountant</td>
                          <td>Tokyo</td>
                          <td>33</td>
                          <td>2008/11/28</td>
                          <td>$162,700</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Brielle Williamson</td>
                          <td>Integration Specialist</td>
                          <td>New York</td>
                          <td>61</td>
                          <td>2012/12/02</td>
                          <td>$372,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Herrod Chandler</td>
                          <td>Sales Assistant</td>
                          <td>San Francisco</td>
                          <td>59</td>
                          <td>2012/08/06</td>
                          <td>$137,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Rhona Davidson</td>
                          <td>Integration Specialist</td>
                          <td>Tokyo</td>
                          <td>55</td>
                          <td>2010/10/14</td>
                          <td>$327,900</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Colleen Hurst</td>
                          <td>Javascript Developer</td>
                          <td>San Francisco</td>
                          <td>39</td>
                          <td>2009/09/15</td>
                          <td>$205,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Sonya Frost</td>
                          <td>Software Engineer</td>
                          <td>Edinburgh</td>
                          <td>23</td>
                          <td>2008/12/13</td>
                          <td>$103,600</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Jena Gaines</td>
                          <td>Office Manager</td>
                          <td>London</td>
                          <td>30</td>
                          <td>2008/12/19</td>
                          <td>$90,560</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Quinn Flynn</td>
                          <td>Support Lead</td>
                          <td>Edinburgh</td>
                          <td>22</td>
                          <td>2013/03/03</td>
                          <td>$342,000</td>
                        </tr>
                        <tr>
						  <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Charde Marshall</td>
                          <td>Regional Director</td>
                          <td>San Francisco</td>
                          <td>36</td>
                          <td>2008/10/16</td>
                          <td>$470,600</td>
                        </tr>
                        <tr>
						   <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Haley Kennedy</td>
                          <td>Senior Marketing Designer</td>
                          <td>London</td>
                          <td>43</td>
                          <td>2012/12/18</td>
                          <td>$313,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Tatyana Fitzpatrick</td>
                          <td>Regional Director</td>
                          <td>London</td>
                          <td>19</td>
                          <td>2010/03/17</td>
                          <td>$385,750</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Michael Silva</td>
                          <td>Marketing Designer</td>
                          <td>London</td>
                          <td>66</td>
                          <td>2012/11/27</td>
                          <td>$198,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Paul Byrd</td>
                          <td>Chief Financial Officer (CFO)</td>
                          <td>New York</td>
                          <td>64</td>
                          <td>2010/06/09</td>
                          <td>$725,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Gloria Little</td>
                          <td>Systems Administrator</td>
                          <td>New York</td>
                          <td>59</td>
                          <td>2009/04/10</td>
                          <td>$237,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Bradley Greer</td>
                          <td>Software Engineer</td>
                          <td>London</td>
                          <td>41</td>
                          <td>2012/10/13</td>
                          <td>$132,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Dai Rios</td>
                          <td>Personnel Lead</td>
                          <td>Edinburgh</td>
                          <td>35</td>
                          <td>2012/09/26</td>
                          <td>$217,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Jenette Caldwell</td>
                          <td>Development Lead</td>
                          <td>New York</td>
                          <td>30</td>
                          <td>2011/09/03</td>
                          <td>$345,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Yuri Berry</td>
                          <td>Chief Marketing Officer (CMO)</td>
                          <td>New York</td>
                          <td>40</td>
                          <td>2009/06/25</td>
                          <td>$675,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Caesar Vance</td>
                          <td>Pre-Sales Support</td>
                          <td>New York</td>
                          <td>21</td>
                          <td>2011/12/12</td>
                          <td>$106,450</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Doris Wilder</td>
                          <td>Sales Assistant</td>
                          <td>Sidney</td>
                          <td>23</td>
                          <td>2010/09/20</td>
                          <td>$85,600</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Angelica Ramos</td>
                          <td>Chief Executive Officer (CEO)</td>
                          <td>London</td>
                          <td>47</td>
                          <td>2009/10/09</td>
                          <td>$1,200,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Gavin Joyce</td>
                          <td>Developer</td>
                          <td>Edinburgh</td>
                          <td>42</td>
                          <td>2010/12/22</td>
                          <td>$92,575</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Jennifer Chang</td>
                          <td>Regional Director</td>
                          <td>Singapore</td>
                          <td>28</td>
                          <td>2010/11/14</td>
                          <td>$357,650</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Brenden Wagner</td>
                          <td>Software Engineer</td>
                          <td>San Francisco</td>
                          <td>28</td>
                          <td>2011/06/07</td>
                          <td>$206,850</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Fiona Green</td>
                          <td>Chief Operating Officer (COO)</td>
                          <td>San Francisco</td>
                          <td>48</td>
                          <td>2010/03/11</td>
                          <td>$850,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Shou Itou</td>
                          <td>Regional Marketing</td>
                          <td>Tokyo</td>
                          <td>20</td>
                          <td>2011/08/14</td>
                          <td>$163,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Michelle House</td>
                          <td>Integration Specialist</td>
                          <td>Sidney</td>
                          <td>37</td>
                          <td>2011/06/02</td>
                          <td>$95,400</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Suki Burks</td>
                          <td>Developer</td>
                          <td>London</td>
                          <td>53</td>
                          <td>2009/10/22</td>
                          <td>$114,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Prescott Bartlett</td>
                          <td>Technical Author</td>
                          <td>London</td>
                          <td>27</td>
                          <td>2011/05/07</td>
                          <td>$145,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Gavin Cortez</td>
                          <td>Team Leader</td>
                          <td>San Francisco</td>
                          <td>22</td>
                          <td>2008/10/26</td>
                          <td>$235,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Martena Mccray</td>
                          <td>Post-Sales support</td>
                          <td>Edinburgh</td>
                          <td>46</td>
                          <td>2011/03/09</td>
                          <td>$324,050</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Unity Butler</td>
                          <td>Marketing Designer</td>
                          <td>San Francisco</td>
                          <td>47</td>
                          <td>2009/12/09</td>
                          <td>$85,675</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Howard Hatfield</td>
                          <td>Office Manager</td>
                          <td>San Francisco</td>
                          <td>51</td>
                          <td>2008/12/16</td>
                          <td>$164,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Hope Fuentes</td>
                          <td>Secretary</td>
                          <td>San Francisco</td>
                          <td>41</td>
                          <td>2010/02/12</td>
                          <td>$109,850</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Vivian Harrell</td>
                          <td>Financial Controller</td>
                          <td>San Francisco</td>
                          <td>62</td>
                          <td>2009/02/14</td>
                          <td>$452,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Timothy Mooney</td>
                          <td>Office Manager</td>
                          <td>London</td>
                          <td>37</td>
                          <td>2008/12/11</td>
                          <td>$136,200</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Jackson Bradshaw</td>
                          <td>Director</td>
                          <td>New York</td>
                          <td>65</td>
                          <td>2008/09/26</td>
                          <td>$645,750</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Olivia Liang</td>
                          <td>Support Engineer</td>
                          <td>Singapore</td>
                          <td>64</td>
                          <td>2011/02/03</td>
                          <td>$234,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Bruno Nash</td>
                          <td>Software Engineer</td>
                          <td>London</td>
                          <td>38</td>
                          <td>2011/05/03</td>
                          <td>$163,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Sakura Yamamoto</td>
                          <td>Support Engineer</td>
                          <td>Tokyo</td>
                          <td>37</td>
                          <td>2009/08/19</td>
                          <td>$139,575</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Thor Walton</td>
                          <td>Developer</td>
                          <td>New York</td>
                          <td>61</td>
                          <td>2013/08/11</td>
                          <td>$98,540</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Finn Camacho</td>
                          <td>Support Engineer</td>
                          <td>San Francisco</td>
                          <td>47</td>
                          <td>2009/07/07</td>
                          <td>$87,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Serge Baldwin</td>
                          <td>Data Coordinator</td>
                          <td>Singapore</td>
                          <td>64</td>
                          <td>2012/04/09</td>
                          <td>$138,575</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Zenaida Frank</td>
                          <td>Software Engineer</td>
                          <td>New York</td>
                          <td>63</td>
                          <td>2010/01/04</td>
                          <td>$125,250</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Zorita Serrano</td>
                          <td>Software Engineer</td>
                          <td>San Francisco</td>
                          <td>56</td>
                          <td>2012/06/01</td>
                          <td>$115,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Jennifer Acosta</td>
                          <td>Junior Javascript Developer</td>
                          <td>Edinburgh</td>
                          <td>43</td>
                          <td>2013/02/01</td>
                          <td>$75,650</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Cara Stevens</td>
                          <td>Sales Assistant</td>
                          <td>New York</td>
                          <td>46</td>
                          <td>2011/12/06</td>
                          <td>$145,600</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Hermione Butler</td>
                          <td>Regional Director</td>
                          <td>London</td>
                          <td>47</td>
                          <td>2011/03/21</td>
                          <td>$356,250</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Lael Greer</td>
                          <td>Systems Administrator</td>
                          <td>London</td>
                          <td>21</td>
                          <td>2009/02/27</td>
                          <td>$103,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Jonas Alexander</td>
                          <td>Developer</td>
                          <td>San Francisco</td>
                          <td>30</td>
                          <td>2010/07/14</td>
                          <td>$86,500</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Shad Decker</td>
                          <td>Regional Director</td>
                          <td>Edinburgh</td>
                          <td>51</td>
                          <td>2008/11/13</td>
                          <td>$183,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Michael Bruce</td>
                          <td>Javascript Developer</td>
                          <td>Singapore</td>
                          <td>29</td>
                          <td>2011/06/27</td>
                          <td>$183,000</td>
                        </tr>
                        <tr>
                          <td>
							 <th><input type="checkbox" id="check-all" ></th>
						  </td>
                          <td>Donna Snider</td>
                          <td>Customer Support</td>
                          <td>New York</td>
                          <td>27</td>
                          <td>2011/01/25</td>
                          <td>$112,000</td>
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
	            <!-- 배송 검색 결과 끝 -->
                
                
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
