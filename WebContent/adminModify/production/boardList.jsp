<%-- 관리자 페이지 기본 양식 입니다. --%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("utf-8");
	
	List<boardDTO> boardList = boardDAO.getDAO().selectBoard();
	
	if(boardList==null){//비정상적인 상황
		
	}
%>
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
                <h3>게시물 관리</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12  ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>게시물 검색</h2>
                    <div class="clearfix"></div>
                  </div>
                  
				  <div class="x_content">
				  	<form action="boardSelect.jsp" method="post">
                  	<table class="myTable">
                  		<tr>
                  			<td>기간</td>
                  			<td  style="display: inline-block;">
                  				<button class="Myinline btn btn-info">오늘</button>
                  				<button class="Myinline btn btn-info">7일</button>
                  				<button class="Myinline btn btn-info">1개월</button>
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
			                    <p class="Myinline"> ~ </p>
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
                  		<tr>
                  			<td>게시판 선택</td>
                  			<td colspan="4">
                  				<select class="Myinline form-control">
                  					<option>공지사항 게시판</option>
                  					<option>Q&A 게시판</option>
                  					<option>리뷰 게시판</option>
                  				</select> 
                  			</td>
                  		</tr>
                  		<tr>
                  			<td>게시물 찾기</td>
                  			<td >
                  				<select class="Myinline form-control" >
                  					<option>제목</option>
                  					<option>작성자</option>
                  				</select>
                  			</td>
                  			<td colspan="3" >
                  				<input type="text" class="form-control" >
                			</td>
                  		</tr>
                  	</table>
                  	</form>
                  	<div>&nbsp;</div>
                  	<div style="margin:  auto;">
                  		<button class="myBtn btn btn-success" type="submit">검색</button>
                  		<button class="myBtn btn btn-secondary" type="reset">초기화</button>
                  	</div>
                  	</div>

                </div>
              </div>
            </div>
            
            <div class="clearfix"></div>
	            
           	<div class="x_panel">
               <div class="x_title">
                 <h2>게시물 목록</h2>
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
			                 
			                 
			                 <button class="btn btn-danger" id="delete" name="delete">삭제</button>
							 <form action="producList.jsp" name="product_list" method="post">
			                 	<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive bulk_action nowrap" cellspacing="0" width="100%">
			                   		<thead>
			                     	<tr>
			                       		<th>
							 				<input type="checkbox" name="check-all" id="check-all" >
						  		   		</th>
			                       		<th>번호</th>
			                       		<th>분류</th>
			                       		<th>제목</th>
				                       	<th>작성자</th>
				                       	<th>작성일</th>
				                       	<th>
				                       		&nbsp;
				                       	</th>
				                    </tr>
				                   </thead>
				                   <tbody>
				                   <% if(boardList==null) { %>
				                   	<tr>
				                   		<td colspan="7">검색조건에 해당하는 게시물이 없습니다.</td>
				                   	</tr>
				                   <% } else { %>
				                   		<% for(boardDTO board : boardList){ %>
					                     <tr>
					                       <td>
											 <input type="checkbox" name="check" >
								  		   </td>
					                       <td><%=board.getNo() %></td>
					                       <td><%=board.getCategory() %></td>
					                       <td><%=board.getTitle() %></td>
					                       <td><%=board.getUno() %></td>
					                       <td><%=board.getDate() %></td>
					                       <th>
					                       	 <button class="btn btn-primary btn-sm" name="update">수정</button>
					                       </th>
					                     </tr>
				                     	<% } %>
				                   <% } %>
				                   </tbody>
				                 </table>
								 </form>
					
               			</div>
             		  </div>
           		  </div>
         	  </div>
         	  
           </div>
              
         </div>
        </div>
        <!-- /page content -->
            
      </div>
    </div>

        <!-- footer -->
        <jsp:include page="jspInclude/footer.jsp"></jsp:include>
        
      </div>
    </div>

	<%-- java script 리스트 --%>
	<jsp:include page="jspInclude/defaultJscript.jsp"></jsp:include>
    
  </body>
</html>
