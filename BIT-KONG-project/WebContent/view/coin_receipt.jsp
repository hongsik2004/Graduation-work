<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../view/template/header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_receipt.css">
    <div class="con">
        <div class="box1">
            <h2>거래내역</h2>
            <ul class="period-menu">
                <li><a href="#" class="on">전체</a></li>
                <li><a href="#">1주일</a></li>
                <li><a href="#">1개월</a></li>
                <li><a href="#">3개월</a></li>
                <li><a href="#">6개월</a></li>
            </ul>
        </div>
        <div class="box2">
            <table>
                <tr>
                    <th>No.</th>
                    <th>날짜</th>
                    <th>시간</th>
                    <th>코인</th>
                    <th>타입</th>
                    <th>수량</th>
                    <th>단가</th>
                    <th>수익금</th>
                    <th>수익률</th>
                </tr>
                <tr>
                    <th>1</th>
                    <th>2022-05-22</th>
                    <th>22:16:32</th>
                    <th>콩트코인/KRW</th>
                    <th>매도</th>
                    <th>1KRW</th>
                    <th>280,000원</th>
                    <th>?원</th>
                    <th>?%</th>
                </tr>
                <tr>
                    <th>2</th>
                    <th>2022-05-22</th>
                    <th>22:16:32</th>
                    <th>콩트코인/KRW</th>
                    <th>매도</th>
                    <th>1KRW</th>
                    <th>280,000원</th>
                    <th>?원</th>
                    <th>?%</th>
                </tr>
                <tr>
                    <th>3</th>
                    <th>2022-05-22</th>
                    <th>22:16:32</th>
                    <th>콩트코인/KRW</th>
                    <th>매도</th>
                    <th>1KRW</th>
                    <th>280,000원</th>
                    <th>?원</th>
                    <th>?%</th>
                </tr>
                <tr>
                    <th>4</th>
                    <th>2022-05-22</th>
                    <th>22:16:32</th>
                    <th>콩트코인/KRW</th>
                    <th>매도</th>
                    <th>1KRW</th>
                    <th>280,000원</th>
                    <th>?원</th>
                    <th>?%</th>
                </tr>
                <tr>
                    <th>5</th>
                    <th>2022-05-22</th>
                    <th>22:16:32</th>
                    <th>콩트코인/KRW</th>
                    <th>매도</th>
                    <th>1KRW</th>
                    <th>280,000원</th>
                    <th>?원</th>
                    <th>?%</th>
                </tr>
                <tr>
                    <th>6</th>
                    <th>2022-05-22</th>
                    <th>22:16:32</th>
                    <th>콩트코인/KRW</th>
                    <th>매도</th>
                    <th>1KRW</th>
                    <th>280,000원</th>
                    <th>?원</th>
                    <th>?%</th>
                </tr>
                <tr>
                    <th>7</th>
                    <th>2022-05-22</th>
                    <th>22:16:32</th>
                    <th>콩트코인/KRW</th>
                    <th>매도</th>
                    <th>1KRW</th>
                    <th>280,000원</th>
                    <th>?원</th>
                    <th>?%</th>
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
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_receipt.js"></script>
</body>
</html>
