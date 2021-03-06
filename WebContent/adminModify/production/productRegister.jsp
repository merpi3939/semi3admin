<%@page import="site.itwill.admindto.productDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message=(String)session.getAttribute("message");
	if(message==null) {
		message="";		
	} else {
		session.removeAttribute("message");
	}
	productDTO product=(productDTO)session.getAttribute("product");
	if(product==null) {
		product=new productDTO();
		product.setPd_name("");
		product.setPd_price(0);
		product.setPd_cate("");
		product.setPd_color("");
		product.setPd_size("");
		product.setPd_code("");
		product.setPd_topinf("");
		product.setPd_botinf("");
		product.setPd_stock(0);		
		
	} else {
		session.removeAttribute("product");
	}

%>    
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

			<%-- 위쪽 nav : 쇼핑몰 바로가기 & 로그인 사용자 --%>
        	<jsp:include page="jspInclude/top_nav.jsp"></jsp:include>

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
									
									<form name="productRegister"  >

										<div class="form-group row ">
											<label class="control-label col-md-3 col-sm-3 ">상품이름<small> (필수)</small></label>
											<div class="col-md-9 col-sm-9 ">
												<input type="text" name="name" class="form-control" value="<%=product.getPd_name() %>" >
											</div>
										</div>
										<div class="form-group row ">
											<label class="control-label col-md-3 col-sm-3 ">판매가<small> (필수)</small></label>
											<div class="col-md-9 col-sm-9 ">
												<input type="text" name="price" class="form-control" value="<%=product.getPd_price() %>">
											</div>
										</div>
										
										<div class="form-group row ">
											<label class="control-label col-md-3 col-sm-3 ">상품 갯수</label>
											<div class="col-md-9 col-sm-9 ">
												<input type="text" name="stock" class="form-control" value="<%=product.getPd_stock()%>">
											</div>
										</div>

										<div class="form-group row">
											<label class="control-label col-md-3 col-sm-3 ">카테고리</label>
											<div class="col-md-9 col-sm-9 ">
												<!--<input type="text" name="category" class="form-control" value="<%=product.getPd_cate()%>">-->
												<input type="hidden" name="category" value="<%=product.getPd_cate()%>">
												<select name="selectBox" class="form-control" onchange="getSelectValue(this.value)">																						
													<option value="Choose option">Choose option</option>
													<option value="Outer">Outer</option>
													<option value="Top">Top</option>
													<option value="Bottom">Bottom</option>
													<option value="Dress">Dress</option>
													<option value="Africa Collection">Africa Collection</option>
													<option value="Accessories">Accessories</option>
													<option value="Artworks">Artworks</option>													
												</select>
												
											</div>
										</div>
									
											<% System.out.println(request.getParameter("name"));%>
										
								


										<div class="form-group row">
											<label class="col-md-3 col-sm-3  control-label">상품사이즈
												<br>
												<small class="text-navy">Normal Bootstrap elements</small>
											</label>

											<div class="col-md-9 col-sm-9 ">
									
											 	<input type="hidden" name="radio" class="form-control" value="<%=product.getPd_size()%>">
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="size" value="S"> S
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="size" value="M"> M
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="size" value="L"> L
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
											<input type="hidden" name="radio" class="form-control" value="<%=product.getPd_color()%>">
											
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="color" value="Red"> Red
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="color" value="Black"> Black
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="color" value="Yellow"> Yellow
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" class="flat" name="color" value="Blue"> Blue
													</label>
												</div>
												 
											</div>
										</div>

										<div class="form-group row ">
										<label class="control-label col-md-3 col-sm-3 ">상단설명</label>
										<div class="col-md-9 col-sm-9 ">
											<input type="text" name="topinf" class="form-control" value="<%=product.getPd_topinf()%>">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="control-label col-md-3 col-sm-3 ">하단설명</label>
											<div class="col-md-9 ">
												<!-- <input type="text" name="botinf" class="form-control" value="<%=product.getPd_botinf() %>"> -->
												
												<ul class="nav navbar-right panel_toolbox" >
												
												</ul>
												<div class="clearfix"></div>
												<div class="x_content" >
												<div id="botinf" ></div>
												
				
												<div  id="botinf" class="editor-wrapper"><input type="hidden" id="botinf" class="form-control" value="<%=product.getPd_botinf() %>"></div>
									
												<textarea name="botinf" id="botinf" style="display:none;"></textarea>
												
												<br/>
				
												<div class="ln_solid"></div>
				
											</div>
											 
												
											</div>
										</div>


										<div class="ln_solid"></div>
										<div class="form-group">
											<div class="col-md-9 col-sm-9  offset-md-3">
												<button type="button" class="btn btn-primary" onclick="location.href='index.jsp'">취소</button>
												<button type="reset" class="btn btn-primary">리셋</button>
												<button type="button" class="btn btn-success" onclick="submitCheck();">확인</button>
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

 			<!-- footer -->
        	<jsp:include page="jspInclude/footer.jsp"></jsp:include>
        	
		</div>
	</div>
	
\

	<%-- java script 리스트 --%>
	<jsp:include page="jspInclude/defaultJscript.jsp"></jsp:include>
	
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
	
	<script type="text/javascript">
	
												
	
	function getSelectValue(val) {
		 document.productRegister.category.value = val;
	}
	 
	
	function submitCheck() {
	
		if(productRegister.name.value=="") {
			alert("상품이름을 입력해 주세요.");
			productRegister.name.focus();
			return;
		}
																										
		if(productRegister.price.value==0) {
			alert("상품가격을 입력해 주세요.");
			productRegister.price.focus();
			return;
		}
		
		if(productRegister.stock.value==0) {
			alert("상품갯수를 입력해 주세요.");
			productRegister.price.focus();
			return;
		}
		
		/*
		if(productRegister.category.value=="") {
			alert("카테고리를 입력해 주세요.");
			productRegister.price.focus();
			return;
		}
		*/
		/*
		if(productRegister.size.value=="") {
			alert("상품 사이즈를 입력해 주세요.");
			productRegister.price.focus();
			return;
		}
		*/
		
		/*
		if(productRegister.color.value=="") {
			alert("상품컬러를 입력해 주세요.");
			productRegister.price.focus();
			return;
		}
		*/
		
		if(productRegister.topinf.value=="") {
			alert("상단설명 입력해 주세요.");
			productRegister.price.focus();
			return;
		}
		/*
		if(productRegister.botinf.value=="") {
			alert("하단설명을 입력해 주세요.");
			productRegister.price.focus();
			return;
		}
		*/
		
		
		productRegister.method="POST";
		productRegister.action="insertProduct.jsp";
		productRegister.submit();
	} 
													
	</script>

</body></html>
