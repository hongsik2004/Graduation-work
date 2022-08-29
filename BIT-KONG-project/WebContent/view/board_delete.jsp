<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/board_delete.css">
	<jsp:include page="../view/template/header.jsp"></jsp:include>
    <div class="con">
        <div class="box1">
            <div class="coin-board">
                <h3>게시판 글 삭제</h3>
            </div>
        </div>
        <div class="box2">
        <form action="./delete_Action.jsp" method="post" name="frm" onsubmit="return checks();">
            <table>
            	<tbody>
                <tr>
                	<td>암호</td>
                	<td><input type="password" class="b-pass" placeholder="비밀번호" name="b_pass" maxlength="6"></td>
					<input type="hidden" name="b_id" value="<%=request.getParameter("b_id")%>">
                </tr>
                </tbody>
            </table>
                <input type="submit" class="btn-delete" value="삭제">
                <a href="#" onclick="return back();" class="btn-back">뒤로</a>
                <input type="reset" class="btn-reset" value="취소">
        </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_board.js"></script>
    <script type="text/javascript">
		function checks() {
			if(!document.frm.b_pass.value.trim()){
				alert("비밀번호가 입력되지 않았습니다!");
				document.frm.b_pass.focus();
				return false;
			}
			return true;
		}
		function back(){
			history.back();
		}
	</script>
</body>
</html>
