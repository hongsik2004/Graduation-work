<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String m_id = (String)session.getAttribute("m_id"); %>
<%System.out.println(m_id); %>
<center>
<div>당신 아이디<br><%=m_id %></div>
<a href="/user/findlogin">돌아가기</a>
</center>
</body>
</html>