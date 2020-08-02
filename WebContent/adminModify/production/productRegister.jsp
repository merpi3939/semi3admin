<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="jspInclude/headFile.jsp"></jsp:include>

	<!-- iCheck -->
	<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	<!-- bootstrap-progressbar -->
	<link
		href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
		rel="stylesheet">
	<!-- JQVMap -->
	<link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />
	<!-- bootstrap-daterangepicker -->
	<link href="../vendors/bootstrap-daterangepicker/daterangepicker.css"
		rel="stylesheet">
	<!-- bootstrap-wysiwyg -->
	<link href="../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
	<!-- Select2 -->
	<link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
	<!-- Switchery -->
	<link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
	<!-- starrr -->
	<link href="../vendors/starrr/dist/starrr.css" rel="stylesheet">
	<!-- bootstrap-daterangepicker -->
	<link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

</head>

<body>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
		
			<%-- 왼쪽 사이드 바 메뉴 --%>
      		<jsp:include page="jspInclude/sidebarMenu.jsp"></jsp:include>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					<nav class="nav navbar-nav">
						<ul class=" navbar-right">
							<li class="nav-item dropdown open" style="padding-left: 15px;">
								<a href="javascript:;" class="user-profile dropdown-toggle"
								aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
								aria-expanded="false"> <img src="images/img.jpg" alt="">표소영
							</a>
								<div class="dropdown-menu dropdown-usermenu pull-right"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="javascript:;"> Profile</a> <a
										class="dropdown-item" href="javascript:;"> <span
										class="badge bg-red pull-right">50%</span> <span>Settings</span>
									</a> <a class="dropdown-item" href="javascript:;">Help</a> <a
										class="dropdown-item" href="login.html"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a>
								</div>
							</li>
							<li class="nav-item"
								style="padding-left: 15px; padding-top: 5px;"><a href="#"><i
									class="fa fa-bookmark-o"></i> 쇼핑몰 바로가기</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>상품 등록</h3>
						</div>

						<div class="title_right">
							<div class="col-md-5 col-sm-5  form-group pull-right top_search">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search for...">
									<span class="input-group-btn">
										<button class="btn btn-default" type="button">Go!</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>


					<div class="row">

						<div class="col-md-12  ">
							<div class="x_panel">
								<div class="x_title">
									<h2>기본 정보 <small>different form elements</small></h2>
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
									<br />
									<form class="form-horizontal form-label-left">

										<div class="form-group row ">
											<label class="control-label col-md-3 col-sm-3 ">상품이름<small> (필수)</small></label>
											<div class="col-md-9 col-sm-9 ">
												<input type="text" class="form-control" placeholder="Default Input">
											</div>
										</div>
										<div class="form-group row ">
											<label class="control-label col-md-3 col-sm-3 ">판매가<small> (필수)</small></label>
											<div class="col-md-9 col-sm-9 ">
												<input type="text" class="form-control" placeholder="Default Input">
											</div>
										</div>
										<div class="form-group row ">
											<label class="control-label col-md-3 col-sm-3 ">상품번호</label>
											<div class="col-md-9 col-sm-9 ">
												<input type="text" class="form-control col-md-11" placeholder="Default Input">
												<button>중복확인</button>
											</div>
										</div>
										<div class="form-group row ">
											<label class="control-label col-md-3 col-sm-3 ">상품 갯수</label>
											<div class="col-md-9 col-sm-9 ">
												<input type="text" class="form-control" placeholder="Default Input">
											</div>
										</div>

										<div class="form-group row">
											<label class="control-label col-md-3 col-sm-3 ">카테고리</label>
											<div class="col-md-9 col-sm-9 ">
												<select class="form-control">
													<option>Choose option</option>
													<option>Outer</option>
													<option>Top</option>
													<option>Bottom</option>
													<option>Dress</option>
													<option>Africa Collection</option>
													<option>Accessories</option>
													<option>Artworks</option>
													<option>Upcycling</option>
													<option>Upcycling</option>
												</select>
											</div>
										</div>
										
										
										<!-- 
										<div class="form-group row">
											<label class="control-label col-md-3 col-sm-3 ">Select Multiple</label>
											<div class="col-md-9 col-sm-9 ">
												<select class="select2_multiple form-control" multiple="multiple">
													<option>Choose option</option>
													<option>Option one</option>
													<option>Option two</option>
													<option>Option three</option>
													<option>Option four</option>
													<option>Option five</option>
													<option>Option six</option>
												</select>
											</div>
										</div>
										 -->


										<div class="form-group row">
											<label class="col-md-3 col-sm-3  control-label">상품사이즈
												<br>
												<small class="text-navy">Normal Bootstrap elements</small>
											</label>

											<div class="col-md-9 col-sm-9 ">

												<div class="radio">
													<label>
														<input type="radio" class="flat" checked name="iCheck"> S
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="iCheck"> M
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="iCheck"> L
													</label>
												</div>


											</div>
										</div>
										
										<div class="form-group row">
											<label class="col-md-3 col-sm-3  control-label">상품컬러
												<br>
												<small class="text-navy">Normal Bootstrap elements</small>
											</label>

											<div class="col-md-9 col-sm-9 " style="display: inline-block;">

												<div class="radio">
													<label>
														<input type="radio" class="flat" checked name="iCheck1"> Red
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="iCheck1"> Black
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="iCheck1"> Yellow
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="iCheck1"> Blue
													</label>
												</div>
												
											</div>
										</div>

										<div class="form-group row ">
										<label class="control-label col-md-3 col-sm-3 ">요약설명</label>
										<div class="col-md-9 col-sm-9 ">
											<input type="text" class="form-control" placeholder="Default Input">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="control-label col-md-3 col-sm-3 ">상세설명</label>
											<div class="col-md-9 ">
												<ul class="nav navbar-right panel_toolbox">

												</ul>
												<div class="clearfix"></div>
												<div class="x_content">
												<div id="alerts"></div>
												
				
												<div id="editor-one" class="editor-wrapper"></div>
				
												<textarea name="descr" id="descr" style="display:none;"></textarea>
				
												<br />
				
												<div class="ln_solid"></div>
				
											</div>
												
												
											</div>
										</div>


										<div class="ln_solid"></div>
										<div class="form-group">
											<div class="col-md-9 col-sm-9  offset-md-3">
												<button type="button" class="btn btn-primary">Cancel</button>
												<button type="reset" class="btn btn-primary">Reset</button>
												<button type="submit" class="btn btn-success">Submit</button>
											</div>
										</div>

									</form>
								</div>
							</div>
						</div>

					</div>

					

					
				</div>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right">
					Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>

	<!-- jQuery -->
	<script src="../vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script src="../vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../vendors/nprogress/nprogress.js"></script>
	<!-- bootstrap-progressbar -->
	<script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="../vendors/iCheck/icheck.min.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="../vendors/moment/min/moment.min.js"></script>
	<script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap-wysiwyg -->
	<script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
	<script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
	<script src="../vendors/google-code-prettify/src/prettify.js"></script>
	<!-- jQuery Tags Input -->
	<script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
	<!-- Switchery -->
	<script src="../vendors/switchery/dist/switchery.min.js"></script>
	<!-- Select2 -->
	<script src="../vendors/select2/dist/js/select2.full.min.js"></script>
	<!-- Parsley -->
	<script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
	<!-- Autosize -->
	<script src="../vendors/autosize/dist/autosize.min.js"></script>
	<!-- jQuery autocomplete -->
	<script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
	<!-- starrr -->
	<script src="../vendors/starrr/dist/starrr.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="../build/js/custom.min.js"></script>

</body></html>
