<%@page import="vo.RegisterVO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	MemberDAO dao = new MemberDAO();
	String m_id = request.getParameter("m_id");
	String m_name = request.getParameter("m_name");
	String m_phone = request.getParameter("m_phone_number");
	String m_password = request.getParameter("m_password");
	System.out.println(m_id);
	System.out.println(m_name);
	System.out.println(m_phone);
	System.out.println(m_password);
	RegisterVO vo = new RegisterVO(m_id,m_name,m_phone,m_password,0);
	int n = dao.insertregist(vo);
	
	if( n > 0){
%>
	<script>
	alert("회원가입이 완료 되었습니다.");
	location.href = "<%=request.getContextPath()%>/view/login.jsp";
	</script>
<%
	}else{
%>
	<script>
	alert("오류발생! 다시 입력해주세요.");
	history.go(-1);
	</script>
<%
	}
%>