<%@page import="vo.BoardlistVO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/board_context.css">
<%
	BoardDAO dao = new BoardDAO();
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	BoardlistVO vo = dao.getBoardContext(b_id);
%>
<%
	if(b_id == 0 ){
%>
	<script>
		alert("잘못된 접근");
		location="<%=request.getContextPath()%>/coin/coin_board";
	</script>
<%
	}
%>
	<jsp:include page="../view/template/header.jsp"></jsp:include>
    <div class="con">
        <div class="box1">
            <div class="coin-board">
                <h3>게시글</h3>
            </div>
        </div>
        <div class="box2">
            <table>
            	<tbody>
                <tr>
                	<td class="b-header"><p class="writer">작성자:<%=vo.getB_name() %></p><p>날짜:<%=vo.getB_date() %></p><p class="hits"> 조회:<%=vo.getB_view() %></p></td>
                </tr>
	                <tr>
    	            	<td class="bd-title"><h2><%=vo.getB_title() %></h2></td>
        	        </tr>
        	        <tr>
         	           <td class="b-context"><p class="context"><%=vo.getB_context() %></p></td>
         	       </tr>
                </tbody>
            </table>
            <ul class="list">
            	<li><a class="back" href="<%=request.getContextPath()%>/coin/coin_board">돌아가기</a></li>
            	<li><a class="update" href="<%=request.getContextPath()%>/view/board_update.jsp?b_id=<%=vo.getB_id()%>">수정</a></li>
            	<li><a class="delete" href="<%=request.getContextPath()%>/view/board_delete.jsp?b_id=<%=vo.getB_id()%>">삭제</a></li>
            </ul>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_board.js"></script>
</body>
</html>
