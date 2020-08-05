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
	member.setUserId(user_id);
	member.setUserPasswd(user_password);
	member.setUserEmail(user_email);
	member.setUserName(user_name);
	member.setUserAddr(user_address);
	member.setUserSex(user_sex);
	member.setUserPhone(user_phone);
	member.setUserBirth(user_birthday);
	member.setUserZip(user_zip);
	member.setUserAdmin(user_admin);
	member.setUserDeldate(null);
	member.setUserDelete("0");
	member.setUserJoindate(null);
	member.setUserNo(null);

	//MEMBER 테이블에 멤버 인스턴스 삽입하기
	int rows=MemberadminDAO.getDAO().insertMember(member);
	
	response.sendRedirect("adminList.jsp");
	
%>