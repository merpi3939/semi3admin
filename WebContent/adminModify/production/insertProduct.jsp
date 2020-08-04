<%@page import="site.itwill.admindao.productAdminDAO"%>
<%@page import="site.itwill.admindto.productDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getMethod().equals("GET")) {
		session.setAttribute("message", "비정상적인 방법으로 페이지 요청");
		response.sendRedirect("insertFormStudent.jsp");
		return;
	}

	//입력값에 대한 캐릭터셋 변경
	request.setCharacterEncoding("utf-8");
	
	//입력값을 반환받아 저장
	String name=request.getParameter("name");
	int price=Integer.parseInt(request.getParameter("price"));
	String code=request.getParameter("code");
	int stock=Integer.parseInt(request.getParameter("stock"));
	String category=request.getParameter("category");
	String size=request.getParameter("size");
	String color=request.getParameter("color");
	String topinf=request.getParameter("topinf");
	String botinf=request.getParameter("botinf");
	
	//DTO인스턴스를 생성하여 입력값으로 필드값 변경
	productDTO product=new productDTO();
	product.setPd_name(name);
	product.setPd_price(price);
	product.setPd_code(code);
	product.setPd_stock(stock);
	product.setPd_cate(category);
	product.setPd_size(size);
	product.setPd_color(color);
	product.setPd_topinf(topinf);
	product.setPd_botinf(botinf);
	
	productAdminDAO.getDao().insertProduct(product);
	
	response.sendRedirect("index.jsp");

%>