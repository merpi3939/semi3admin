<%@page import="site.itwill.admindao.MemberadminDAO"%>
<%@page import="site.itwill.admindto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//비정상적인 요청에 대한 처리
	if(request.getParameter("user_no")==null){
		session.setAttribute("message", "비정상적인 방법으로 페이지를 요청하셨습니다.");
		response.sendRedirect("memberList.jsp");		
		return;
	}

	//전달받은 회원번호를 반환받아 저장
	int user_no=Integer.parseInt(request.getParameter("user_no"));
	
	//회원번호를 전달받아 Member 테이블에 저장된 회원정보를 삭제하는 DAO 클래스의 메소드 호출
	int rows=MemberadminDAO.getDAO().deleteMember(user_no);
	
	if(rows<=0){//삭제된 회원정보가 없는 경우 - 비정상적인 요청
		session.setAttribute("message", "삭제하고자 하는 번호의 회원정보가 없습니다.");
	}
	
	//회원정보 검색 출력페이지로 이동
	response.sendRedirect("memberList.jsp");
	
%>