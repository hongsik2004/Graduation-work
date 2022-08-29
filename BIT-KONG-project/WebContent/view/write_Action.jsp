<%@page import="vo.BoardlistVO"%>
<%@page import="dao.BoardDAO"%>
<%@page import="java.io.PrintWriter"%>
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
		
		//int b_id = Integer.parseInt(request.getParameter("b_id"));
		String b_title = request.getParameter("b_title");
		String b_name = request.getParameter("b_name");
		//String b_date = request.getParameter("b_date");
		String b_pass = request.getParameter("b_pass");
		int c_tag = Integer.parseInt(request.getParameter("c_tag"));
		String b_context = request.getParameter("b_context");
		//int b_view = Integer.parseInt(request.getParameter("b_view"));
		
		int n = dao.write(b_title, b_name, b_pass,c_tag,b_context);
		if( n > 0){
	%>
		<script>
			alert("성공적으로 글을 작성하였습니다.");
			location.href="/coin/coin_board";
		</script>
	<%
		}else{
	%>
		<script>
			alert("글 작성을 실패 하였습니다! 다시 시도 해주세요.");
			history.go(-1);
		</script>
	<%
		}
	%>
</body>
</html>