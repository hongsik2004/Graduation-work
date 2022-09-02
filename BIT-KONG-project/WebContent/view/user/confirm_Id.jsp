<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복 확인 절차</title>
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
	<script>opener.document.frm.chk.value = true;</script>
	<%}else{ %>
	<center>
	<br><br>
	<h4>입력하신<%=m_id %>는 사용하실 수 있는 이메일 입니다.</h4>
	</center>
	<script>opener.document.frm.chk.value = false;</script>
	<script>const target = opener.document.getElementById('emailok');</script>
	<script>target.disabled = false;</script>
	<%} %>
</body>
</html>