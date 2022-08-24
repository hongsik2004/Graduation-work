<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_board.css">
	<jsp:include page="../view/template/header.jsp"></jsp:include>
    <div class="con">
        <div class="box1">
            <div class="coin-board">
                <h3>코인별 게시판</h3>
            </div>
            <div class="coins">
                <ul class="bitcoin">
                    <li><a href="#" class="on">콩트코인</a></li>
                    <li><a href="#">비트콩트코인</a></li>
                    <li><a href="#">이더리움코인</a></li>
                    <li><a href="#">어쩌구코인</a></li>
                </ul>
            </div>
        </div>
        <div class="box2">
            <div class="board-main">
            	<div class="board-write">
            		<a href="./coin_write.jsp">글쓰기</a>
            	</div>
                <div class="board-title">
                    <h2>콩트코인 게시판에 오신걸 환영합니다.</h2>
                    <span>코인 관련된 분석 및 정보글을 적는 게시판입니다.</span>
                </div>
            </div>
            <table>
                <tr>
                	<th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>등록일</th>
                    <th>조회수</th>
                </tr>
                <tr>
                	<td>6</td>
                    <td><p><a href="#">콩트코인 제가 볼땐 떡상합니다.</p></a></td>
                    <td>박홍식</td>
                    <td>2022-05-21</td>
                    <td>1</td>
                </tr>
                <tr>
                	<td>5</td>
                    <td><p><a href="#">콩트코인 제가 볼땐 떡상합니다.</p></a></td>
                    <td>박호식</td>
                    <td>2022-05-21</td>
                    <td>1</td>
                </tr>
                <tr>
                	<td>4</td>
                    <td><p><a href="#">콩트코인 제가 볼땐 떡상합니다.</p></a></td>
                    <td>박혼식</td>
                    <td>2022-05-21</td>
                    <td>1</td>
                </tr>
                <tr>
                	<td>3</td>
                    <td><p><a href="#">콩트코인 제가 볼땐 떡상합니다.</p></a></td>
                    <td>박헐식</td>
                    <td>2022-05-21</td>
                    <td>1</td>
                </tr>
                <tr>
                	<td>2</td>
                    <td><p><a href="#">콩트코인 제가 볼땐 떡상합니다.</p></a></td>
                    <td>박홀식</td>
                    <td>2022-05-21</td>
                    <td>1</td>
                </tr>
                <tr>
                	<td>1</td>
                    <td><p><a href="#">콩트코인 제가 볼땐 떡상합니다.</p></a></td>
                    <td>박호석</td>
                    <td>2022-05-21</td>
                    <td>1</td>
                </tr>
            </table>
            <div class="paglist">
                <ul class="pagination">
                    <li class="page-item"><a href="#">&lt;</a></li>
                    <li class="page-item"><a href="#" class="num action">1</a></li>
                    <li class="page-item"><a href="#" class="num">2</a></li>
                    <li class="page-item"><a href="#" class="num">3</a></li>
                    <li class="page-item"><a href="#" class="num">4</a></li>
                    <li class="page-item"><a href="#">&gt;</a></li>
                </ul>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_board.js"></script>
</body>
</html>
