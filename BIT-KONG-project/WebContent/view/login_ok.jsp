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
	request.setCharacterEncoding("UTF-8");
	
	String m_id = request.getParameter("m_id");
	String m_password = request.getParameter("m_password");
	String m_name = request.getParameter("m_name");
	
	MemberDAO dao = new MemberDAO();
	if(dao.checkUser(m_id, m_password) == 1){
		session.setAttribute("m_id", m_id);
		%><script>alert("로그인 성공!"); location.href="<%=request.getContextPath()%>/view/buying.jsp"</script><%
	}else if(dao.checkUser(m_id, m_password) == 0){	
			%><script>alert("비밀번호가 틀렸습니다!!"); history.back();</script><%
	}else{
			%><script>alert("아이디가 틀렸습니다!!"); history.back();</script><%
	}
%>
</body>
</html>