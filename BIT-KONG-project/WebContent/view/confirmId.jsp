<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String m_id = request.getParameter("m_id");
	MemberDAO dao = new MemberDAO();
	boolean result = dao.confirmId(m_id);
	
	if(result){ %>
	<center>
	<br><br>
	<h4>이미 사용중인 이메일 입니다.</h4>
	</center>
	<%}else{ %>
	<center>
	<br><br>
	<h4>입력하신<%=m_id %>는 사용하실 수 있는 이메일 입니다.</h4>
	</center>
	<%} %>
</body>
</html>