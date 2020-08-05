<%@page import="java.sql.Date"%>
<%@page import="site.itwill.admindao.MemberadminDAO"%>
<%@page import="site.itwill.admindto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//비정상적인 요청 처리
	if(request.getMethod().equals("GET")){
		return;
	}

	request.setCharacterEncoding("utf-8");

	//관리자 정보 가져오기
	String user_id = request.getParameter("id");
	String user_password = request.getParameter("password");
	String user_email = request.getParameter("email");
	String user_name = request.getParameter("name");
	String user_address = request.getParameter("address");
	String user_sex = request.getParameter("sex");
	String user_phone = request.getParameter("phone");
	String user_birthday = request.getParameter("birthday");
	String user_zip = request.getParameter("zip");
	String user_admin = request.getParameter("admin");
	//String user_joindate = new Date().toString();
	
	//String user_no = "(SELECT LPAD((NVL(MAX(USER_NO), 0) + 1), 999, '0') USER_NO FROM MEMBER)";
	
	
	//멤버 인스턴스 만들기
	MemberDTO member = new MemberDTO();
	member.setUser_id(user_id);
	member.setUser_passwd(user_password);
	member.setUser_email(user_email);
	member.setUser_name(user_name);
	member.setUser_addr(user_address);
	member.setUser_sex(user_sex);
	member.setUser_phone(user_phone);
	member.setUser_birth(user_birthday);
	member.setUser_zip(user_zip);
	member.setUser_admin(user_admin);
	member.setUser_deldate(null);
	member.setUser_delete("0");
	member.setUser_joindate(null);
	member.setUser_no(null);

	//MEMBER 테이블에 멤버 인스턴스 삽입하기
	int rows=MemberadminDAO.getDAO().insertMember(member);
	
	response.sendRedirect("adminList.jsp");
	
%>