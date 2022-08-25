<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_write.css">
	<jsp:include page="../view/template/header.jsp"></jsp:include>
    <div class="con">
        <div class="box1">
            <div class="coin-board">
                <h3>게시판 글쓰기 양식</h3>
            </div>
        </div>
        <div class="box2">
        <form action="./write_Action.jsp" method="post" name="frm" onsubmit="return checks();">
            <table>
            	<tbody>
                <tr>
                	<td><input type="text" class="b-title" placeholder="제목" name="b_title" maxlength="50"></td>
                </tr>
                <tr>
                	<td><input type="text" class="b-name" placeholder="이름" name="b_name" maxlength="10"></td>
                </tr>
                <tr>
                    <td><textarea class="b-write" placeholder="내용" name="b_context" maxlength="2048"></textarea></td>
                </tr>
                </tbody>
            </table>
                <input type="submit" class="btn-write" value="글쓰기">
        </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_board.js"></script>
    <script type="text/javascript">
		function checks() {
			if(!document.frm.b_title.value.trim()){
				alert("제목이 입력되지 않았습니다!");
				document.frm.b_title.focus();
				return false;
			}
			if(!document.frm.b_name.value.trim()){
				alert("이름이 입력되지 않았습니다!");
				document.frm.b_name.focus();
				return false;
			}
			if(!document.frm.b_context.value.trim()){
				alert("내용이 입력되지 않았습니다!");
				document.frm.b_context.focus();
				return false;
			}
			return true;
		}
	</script>
</body>
</html>