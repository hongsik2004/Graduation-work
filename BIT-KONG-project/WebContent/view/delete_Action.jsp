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
		BoardDAO dao = new BoardDAO();
		int b_id = Integer.parseInt(request.getParameter("b_id"));
		String b_pass = request.getParameter("b_pass");
		int n = dao.deleteboard(b_id,b_pass);
		
		if(n == 1){ // 삭제완료
	%>
	<script>
		alert("성공적으로 삭제 되었습니다.");
		location.href="<%=request.getContextPath()%>/coin/coin_board";
	</script>
	<%
		}else if(n == 0){
	%>
	<script>
		alert("비밀번호 오류");
		history.go(-1);
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