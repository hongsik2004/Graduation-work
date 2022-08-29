<%@page import="vo.BoardlistVO"%>
<%@page import="dao.BoardDAO"%>
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
	BoardDAO dao = new BoardDAO();
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	int c_tag = Integer.parseInt(request.getParameter("c_tag"));
	String b_title = request.getParameter("b_title");
	String b_name = request.getParameter("b_name");
	String b_pass = request.getParameter("b_pass");
	String b_context = request.getParameter("b_context");
	BoardlistVO vo = new BoardlistVO(b_id,c_tag,b_title,b_name,"",b_pass,b_context,0);
	int n = dao.updateboard(vo);
	
	if(n == 1){		
%>
	<script>
		alert("게시글 수정이 성공하였습니다.");
		location.href="<%=request.getContextPath()%>/coin/coin_board";
	</script>
<%
	}else if(n == 0){
%>
	<script>
		alert("비밀번호 오류");
		history.back();
	</script>
<%
	}else{		
%>
	<script>
		alert("게시글 없음");
		history.back();
	</script>
<%
	}
%>
</body>
</html>